﻿--[[
	Enchantrix Addon for World of Warcraft(tm).
	Version: 9.1.BETA.5.15 (OneMawTime)
	Revision: $Id$
	URL: http://enchantrix.org/

	General utility functions

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

	Note:
		This AddOn's source code is specifically designed to work with
		World of Warcraft's interpreted AddOn system.
		You have an implicit license to use this AddOn with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat
]]
Enchantrix_RegisterRevision("$URL$", "$Rev$")

-- Global functions
--local getItems
--local getItemType
local getReagentInfo
local getSigFromLink
local getReagentPrice
local getLinkFromName
local isDisenchantable
local getItemIdFromSig
local getItemIdFromLink
local saveCraftReagentInfoToCache
local getCraftReagentInfoFromCache

local split
local chatPrint
local getRevision
local spliterator

local gcd
local round
local roundUp
local confidenceInterval

local createProfiler

local tooltip = LibStub("nTipHelper:1")

------------------------
--   Item functions   --
------------------------

-- Return false if item id can't be disenchanted
-- See full code in Enchantrix.Util.GetIType(link)
function isDisenchantable(id)
	if (id) then
		local _, _, quality, _, _, itemType, itemSubType, itemStackCount, itemEquipLoc = GetItemInfo(id)
		if (not quality) then
			-- GetItemInfo() failed, item might be disenchantable
			return true
		end

		-- Legion (Wow 7.0) currently has artifact relics disenchantable, but they don't follow normal equipment rules, and are a subtype of Gem
		-- convert this to a type we can handle
		if (itemType == "Gem" and  itemSubType == "Artifact Relic") then
			itemEquipLoc = "INVTYPE_TRINKET"
		end

		if (not Enchantrix.Constants.InventoryTypes[itemEquipLoc]) then
			-- Neither weapon nor armor
			return false
		end
		if (quality and ((quality < 2) or (quality > 4))) then
			-- Low quality or too high quality
			return false
		end
		if (itemStackCount and itemStackCount > 1) then
			-- Stackable item
			return false
		end
		return true
	end
	return false
end


-- keep these abstracted in case they need more complex serialization
local function serializeItemInfo(...)
	local str = strjoin("#", ...);
	return str;
end

local function deserializeItemInfo(str)
	assert(type(str) == "string")
	return strsplit("#", str);
end


-- Frontend to GetItemInfo()
-- Information for disenchant reagents are kept in a saved variable cache
function getReagentInfo(reagentID)
	if (not EnchantConfig) then EnchantConfig = {} end
	if (not EnchantConfig.cache) then EnchantConfig.cache = {} end
	if (not EnchantConfig.cache.names) then EnchantConfig.cache.names = {} end

	if (not EnchantConfig.cache.reagentItemInfoBackup) then
		EnchantConfig.cache.reagentItemInfoBackup = {}
		-- copy in the default cache data (English only)
		-- the localizations will get updated as the items come into the user's cache
		EnchantConfig.cache.reagentItemInfoBackup = Enchantrix.Constants.BackupReagentItemInfo;
	end

	local cache = EnchantConfig.cache.reagentItemInfoBackup

	local id = reagentID;

	if type(id) == "string" then
		local _, _, i = id:find("item:(%d-):")
		if (not i)  then
			Enchantrix.Util.DebugPrintQuick("reagentinfo failed to get item number from string ", id );
		end
		id = i
	end

	id = tonumber(id)

	if (not id)  then
		Enchantrix.Util.DebugPrintQuick("reagentinfo nil ID: ", type(reagentID), reagentID, tonumber(reagentID) );
	end

	--Enchantrix.Util.DebugPrintQuick("reagentinfo checking ID: ", type(reagentID), reagentID, tonumber(reagentID), id );
	local sName, sLink, iQuality, iLevel, rLevel, sType, sSubtype, iStack, sEquip, sTexture = GetItemInfo(id)

	if (id and sName) then
		-- save this reagent data while we have it
		-- full item info by item id
		cache[id] = serializeItemInfo( sName, sLink, iQuality, iLevel, rLevel, sType, sSubtype, iStack, sEquip, sTexture );
		-- name to id mapping for getLinkFromName()
		EnchantConfig.cache.names[sName] = "item:"..id..":0:0:0";
	end

	if (id and (not sName))  then
		-- last resort is getting the data from our cache, because the WoW cache does not have this item
		-- remember: the cache is not our primary storage for this data, only a backup
		if ( cache[id] ) then
			-- try the user's cache first
			sName, sLink, iQuality, iLevel, rLevel, sType, sSubtype, iStack, sEquip, sTexture = deserializeItemInfo( cache[id] );
		elseif (Enchantrix.Constants.BackupReagentItemInfo[ id ]) then
			-- fallback to hard coded cache, copy to user cache if found
			cache[id] = Enchantrix.Constants.BackupReagentItemInfo[ id ]
			sName, sLink, iQuality, iLevel, rLevel, sType, sSubtype, iStack, sEquip, sTexture = deserializeItemInfo( Enchantrix.Constants.BackupReagentItemInfo[ id ] );
		end
	end

	if (id and (not sName)) then
		Enchantrix.Util.DebugPrintQuick("Could not find any reagent info for ", id, reagentID );

		-- fake the info as best we can
		sName = "item:"..id;
		sLink = "item:"..id..":0:0:0"
		iQuality = 0;
		rLevel = 0;
	end

	return sName, sLink, iQuality, rLevel, sType, sSubtype, iStack, sEquip, sTexture
end




local function checkReagentCacheVersion()
	if (not EnchantConfig) then EnchantConfig = {} end
	if (not EnchantConfig.cache) then EnchantConfig.cache = {} end
	if (not EnchantConfig.cache.CraftReagentCache) then EnchantConfig.cache.CraftReagentCache = {} end

	local myFormatVersion = 1;		-- in case we need to change the format dramatically
	local version,build,date = GetBuildInfo();
	local versionString = strjoin(".", version, build, myFormatVersion );

	if EnchantConfig.cache.CraftReagentCache.Version then
		-- version stamp exists, check it
		if (EnchantConfig.cache.CraftReagentCache.Version ~= versionString) then
			--Enchantrix.Util.DebugPrintQuick("Found a new WoW version, wiping out reagent cache");
			EnchantConfig.cache.CraftReagentCache = {}
		end
	end

	EnchantConfig.cache.CraftReagentCache.Version = versionString;
end


-- ccox - originally I had a timestamp in here, but think that's pointless when reagents don't change without WoW version changes
-- also, without the timestamp, you're more likely to keep a cache of items you've seen from your alts

--   ["itemname"] = "reagent1itemNo:reagent1count;reagent2itemNo:count;reagent3itemNo:reagent3count"

local function assembleReagentEntryString( reagentList )

	local reagentString = nil
	for _, reagent in ipairs(reagentList) do

		local itemLink = reagent[1]
		local count = reagent[2]

		local itemNumber
		if type(itemLink) == "string" then
			local _, _, i = itemLink:find("item:(%d-):")
			if (not i)  then
				Enchantrix.Util.DebugPrintQuick("assembleReagentEntryString failed to get item number from string ", itemLink );
			end
			itemNumber = i
		else
			itemNumber = Enchantrix.Util.GetItemIdFromLink(itemLink)
		end

		itemNumber = tonumber(itemNumber)
		if (not itemNumber) then
			-- something failed, bail
			return nil
		end

		local oneEntry = strjoin(":", itemNumber, count );

		if (reagentString) then
			reagentString = strjoin(";", reagentString, oneEntry);
		else
			reagentString = oneEntry;
		end
	end

	return reagentString;
end


local function createReagentList(...)
	local n = select("#", ... )
	local reagentList = {}
	for i = 1, n do
		local oneEntry = select(i, ...)
		local itemNumber, itemCount = strsplit(":", oneEntry);
		itemNumber = tonumber(itemNumber)
		itemCount = tonumber(itemCount)
		reagentList[i] = { itemNumber, itemCount }
	end
	return reagentList
end

local function dissectReagentEntryString(entryString)
	if not entryString then
		return
	end
	assert(type(entryString) == "string")
	local reagentList = createReagentList( strsplit(";", entryString ) );
	return reagentList
end




function saveCraftReagentInfoToCache(itemname, reagentList)
	checkReagentCacheVersion();
	local entryString = assembleReagentEntryString( reagentList );
	if (entryString) then
		EnchantConfig.cache.CraftReagentCache[ itemname ] = entryString;
	end
end


function getCraftReagentInfoFromCache(itemname)
	checkReagentCacheVersion();
	local entryString = EnchantConfig.cache.CraftReagentCache[ itemname ];
	if (not entryString) then
		return nil;
	end
	local reagentList = dissectReagentEntryString(entryString);
	return reagentList
end



function getLinkFromName(name)
	assert(type(name) == "string")

	if not EnchantConfig.cache then
		EnchantConfig.cache = {}
	end
	if not EnchantConfig.cache.names then
		EnchantConfig.cache.names = {}
	end

	local link = EnchantConfig.cache.names[name]
	if link then
		local n = GetItemInfo(link)
		if n ~= name then
			EnchantConfig.cache.names[name] = nil
		end
	end

	if not EnchantConfig.cache.names[name] then

		-- if we didn't find it in the cache, try something else
		-- first, check our list of reagent item ids, because they're most likely
		for i, _ in ipairs( Enchantrix.Constants.StaticPrices ) do
			local n, link = GetItemInfo(i)
			if n and (n == name) then
				EnchantConfig.cache.names[name] = link
				break
			end
		end
	end

	-- max item is now about 150000
	-- we should NOT be doing a search item by item

	return EnchantConfig.cache.names[name]
end


-- Returns HSP, median and static price for reagent
-- Auctioneer values are kept in cache for 48h in case Auctioneer isn't loaded
-- Please remember that this gets called by things outside of enchantrix (barker, btmscan, etc.) and they need valid pricing
function getReagentPrice(reagentID, extra)
	-- reagentID ::= number | hyperlink

	if type(reagentID) == "string" then
		local _, _, i = reagentID:find("item:(%d+):")
		reagentID = i
	end
	reagentID = tonumber(reagentID)
	if not reagentID then return nil end

	if Enchantrix.Settings.GetSetting('fixed.'..reagentID) then
		local myValue = tonumber(Enchantrix.Settings.GetSetting('fixed.'..reagentID..'.value'))
		if myValue then
			local weight = Enchantrix.Settings.GetSetting("weight."..reagentID) / 100
			myValue = myValue * weight
			-- this function can get called by anyone, and must return usable values
			return myValue,myValue,myValue,myValue,myValue
		end
	end

	local hsp, median, market, price5
	market = Enchantrix.Constants.StaticPrices[reagentID]

	if ( Enchantrix.Constants.VendorTrash[reagentID] ) then
		-- it's trash, so we'll just use the vendor price
		hsp = market;
		median = market;
		price5 = market;
	else
		-- not trash, lookup the auction price
		if AucAdvanced then
			if extra then
                local _, reagentLink, _, _, _, _, _, _, _ = getReagentInfo(reagentID)
				price5 = AucAdvanced.API.GetAlgorithmValue(extra, reagentLink)
			else
                local _, link = GetItemInfo(reagentID);
				price5 = AucAdvanced.API.GetMarketValue(link);
			end
		end
        if Auctioneer and Enchantrix.State.Auctioneer_Loaded
            and tonumber(Auctioneer.MajorVersion) >= 8 then
			local stats = Auctioneer:Statistics( tostring(reagentID) )

--- TEMPORARY - how to handle list!?  Mostly want "Over time"
            for name, stat in ipairs(stats) do
                local price, type = stat:Best()
                local points = stat:Number()

                if price and points > 0 and price > 0 then
                    median = price
                else
                end
            end
        end
	end

	if not EnchantConfig.cache then EnchantConfig.cache = {} end
	if not EnchantConfig.cache.prices then EnchantConfig.cache.prices = {} end
	if not EnchantConfig.cache.prices[reagentID] then EnchantConfig.cache.prices[reagentID] = {} end
	local cache = EnchantConfig.cache.prices[reagentID]
	if cache.timestamp and time() - cache.timestamp > 172800 then
		cache = {}
	end

	cache.hsp = hsp or cache.hsp
	cache.median = median or cache.median
	cache.market = market or cache.market
	cache.price5 = price5 or cache.price5
	cache.timestamp = time()

	hsp, median, market, price5 = cache.hsp, cache.median, cache.market, cache.price5
	local weight = Enchantrix.Settings.GetSetting("weight."..reagentID) / 100
	if (hsp) then hsp = hsp * weight end
	if (median) then median = median * weight end
	if (market) then market = market * weight end
	if (price5) then price5 = price5 * weight end

	return hsp, median, market, price5
end


-- Return item id as integer
function getItemIdFromSig(sig)
	if type(sig) == "string" then
		local _, _, sig2 = sig:find("(%d+)")
		sig = sig2
	end
	return tonumber(sig)
end

function getItemIdFromLink(link)
	local itemType, itemId = tooltip:DecodeLink(link)
	if (itemType == "item") then
		return itemId
	end
end


-- itemId:enchantId:jewelId1:jewelId2:jewelId3:jewelId4:suffixId:uniqueId:linkLevel:reforgeId
-- Legion: item:129104::::::::100:253::11
-- TODO - ccox - Need to figure out what the random suffix is, but nobody seems to have documented the changes yet for Legion

-- we want to keep just the itemID and suffixID (random enchantment)
function getSigFromLink(link)
	assert(type(link) == "string")

--	local _, _, id, rand = link:find("item:(%d+):%d+:%d+:%d+:%d+:%d+:([-%d]+)")	-- old version from Warlords
	local _, _, id, rand = link:find("item:(%d+):%d*:%d*:%d*:%d*:%d*:([-%d]*)")	-- current for Legion
	--Enchantrix.Util.DebugPrint("getSigFromLink input", ENX_INFO, "getting sig for ", link, id, rand )	-- debugging
	if ((not rand) or (rand == "")) then
		rand = 0
	end
	if id then
		return id..":0:"..rand
	else
		local _, _, trimmed = link:find("(item:.+:%d+)|?")
		Enchantrix.Util.DebugPrint("getSigFromLink", ENX_INFO, "failed to get sig from link", "could not get sig for: " .. trimmed .. ", ".. id ..", ".. rand.. ", ".. link)
	end
end


-----------------------------------
--   General Utility Functions   --
-----------------------------------

-- Extract the revision number from SVN keyword string
function getRevision(str)
	if not str then return 0 end
	local _, _, rev = str:find("Revision: (%d+)")
	return tonumber(rev) or 0
end

function split(str, at)
	local splut = {};

	if (type(str) ~= "string") then return nil end
	if (not str) then str = "" end

	if (not at)
		then table.insert(splut, str)

	else
		for n, c in str:gmatch('([^%'..at..']*)(%'..at..'?)') do
			table.insert(splut, n);

			if (c == '') then break end
		end
	end
	return splut;
end

-- Iterator version of split()
--   for i in spliterator(a, b) do
-- is equivalent to
--   for _, i in ipairs(split(a, b)) do
-- but puts less strain on the garbage collector
function spliterator(str, at)
	local start
	local found = 0
	local done = (type(str) ~= "string")
	return function()
		if done then return nil end
		start = found + 1
		found = str:find(at, start, true)
		if not found then
			found = 0
			done = true
		end
		return str:sub(start, found - 1)
	end
end

function chatPrint(text, cRed, cGreen, cBlue, cAlpha, holdTime)
	local frameIndex = Enchantrix.Config.GetFrameIndex();

	if (cRed and cGreen and cBlue) then
		if _G["ChatFrame"..frameIndex] then
			_G["ChatFrame"..frameIndex]:AddMessage(text, cRed, cGreen, cBlue, cAlpha, holdTime);

		elseif (DEFAULT_CHAT_FRAME) then
			DEFAULT_CHAT_FRAME:AddMessage(text, cRed, cGreen, cBlue, cAlpha, holdTime);
		end

	else
		if _G["ChatFrame"..frameIndex] then
			_G["ChatFrame"..frameIndex]:AddMessage(text, 1.0, 0.5, 0.25);
		elseif (DEFAULT_CHAT_FRAME) then
			DEFAULT_CHAT_FRAME:AddMessage(text, 1.0, 0.5, 0.25);
		end
	end
end


------------------------
--   Math Functions   --
------------------------

function gcd(a, b)
	-- Greatest Common Divisor, Euclidean algorithm
	local m, n = tonumber(a), tonumber(b) or 0
	while (n ~= 0) do
		m, n = n, math.fmod(m, n)
	end
	return m
end

-- Round up m to nearest multiple of n
function roundUp(m, n)
	return math.ceil(m / n) * n
end

-- Round m to n digits in given base
function round(m, n, base, offset)
	base = base or 10 -- Default to base 10
	offset = offset or 0.5

	if (n or 0) == 0 then
		return math.floor(m + offset)
	end

	if m == 0 then
		return 0
	elseif m < 0 then
		return -round(-m, n, base, offset)
	end

	-- Get integer and fractional part of n
	local f = math.floor(n)
	n, f = f, n - f

	-- Pre-rounding multiplier is 1 / f
	local mul = 1
	if f > 0.1 then
		mul = math.floor(1 / f + 0.5)
	end

	local d
	if n > 0 then
		d = base^(n - math.floor(math.log(m) / math.log(base)) - 1)
	else
		d = 1
	end
	if offset >= 1 then
		return math.ceil(m * d * mul) / (d * mul)
	else
		return math.floor(m * d * mul + offset) / (d * mul)
	end
end

-- Returns confidence interval for binomial distribution given observed
-- probability p, sample size n, and z-value
function confidenceInterval(p, n, z)
	if not z then
		--[[
		z		conf
		1.282	80%
		1.645	90%
		1.960	95%
		2.326	98%
		2.576	99%
		3.090	99.8%
		3.291	99.9%
		]]
		z = 1.645
	end
	assert(p >= 0 and p <= 1)
	assert(n > 0)

	local a = p + z^2 / (2 * n)
	local b = z * math.sqrt(p * (1 - p) / n + z^2 / (4 * n^2))
	local c = 1 + z^2 / n

	return (a - b) / c, (a + b) / c
end

---------------------
-- Debug functions --
---------------------

-- profiler:Start()
-- Record start time and memory, set state to running
local function _profilerStart(this)
	this.t = GetTime()
	this.m = gcinfo()
	this.r = true
end

-- profiler:Stop()
-- Record time and memory change, set state to stopped
local function _profilerStop(this)
	this.m = (gcinfo()) - this.m
	this.t = GetTime() - this.t
	this.r = false
end

-- profiler:DebugPrint()
local function _profilerDebugPrint(this)
	if this.n then
		Enchantrix.Util.DebugPrintQuick("Profiler ["..this.n.."]")
	else
		Enchantrix.Util.DebugPrintQuick("Profiler")
	end
	if this.r == nil then
		Enchantrix.Util.DebugPrintQuick("  Not started")
	else
		Enchantrix.Util.DebugPrintQuick(("  Time: %0.3f s"):format(this:Time()))
		Enchantrix.Util.DebugPrintQuick(("  Mem: %0.0f KiB"):format(this:Mem()))
		if this.r then
			Enchantrix.Util.DebugPrintQuick("  Running...")
		end
	end
end

-- time = profiler:Time()
-- Return time (in seconds) from Start() [until Stop(), if stopped]
local function _profilerTime(this)
	if this.r == false then
		return this.t
	elseif this.r == true then
		return GetTime() - this.t
	end
end

-- mem = profiler:Mem()
-- Return memory change (in kilobytes) from Start() [until Stop(), if stopped]
local function _profilerMem(this)
	if this.r == false then
		return this.m
	elseif this.r == true then
		return (gcinfo()) - this.m
	end
end

-- profiler = Enchantrix.Util.CreateProfiler("foobar")
function createProfiler(name)
	return {
		Start = _profilerStart,
		Stop = _profilerStop,
		DebugPrint = _profilerDebugPrint,
		Time = _profilerTime,
		Mem = _profilerMem,
		n = name,
	}
end

Enchantrix.Util = {
	Revision			= "$Revision$",

--	GetItems			= getItems,
--	GetItemType			= getItemType,
--	SigFromLink			= sigFromLink,
	GetReagentInfo		= getReagentInfo,
	GetSigFromLink		= getSigFromLink,
	GetLinkFromName		= getLinkFromName,
	GetReagentPrice		= getReagentPrice,
	GetItemIdFromSig	= getItemIdFromSig,
	IsDisenchantable	= isDisenchantable,
	GetItemIdFromLink	= getItemIdFromLink,
	SaveCraftReagentInfoToCache		= saveCraftReagentInfoToCache,
	GetCraftReagentInfoFromCache	= getCraftReagentInfoFromCache,

	Split				= split,
	ChatPrint			= chatPrint,
	Spliterator			= spliterator,
	GetRevision			= getRevision,

	GCD					= gcd,
	Round				= round,
	RoundUp				= roundUp,
	ConfidenceInterval	= confidenceInterval,

	CreateProfiler		= createProfiler,
}


function Enchantrix.Util.GetIType(link)
	if not link then return end
	--Enchantrix.Util.DebugPrintQuick("GetIType type: ", type(link), " link: ", link, tooltip:DecodeLink(link) )	-- DEBUGGING

	local const = Enchantrix.Constants
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, invTexture = GetItemInfo(link)
    local effLevel, _preview, baseLevel = GetDetailedItemLevelInfo(link)
    if effLevel then
        itemLevel = effLevel
    end

	if not (itemName and itemEquipLoc and itemRarity and itemLevel) then
		-- Enchantrix.Util.DebugPrintQuick("GetIType could not get item info for: ", link, itemName , itemEquipLoc , itemRarity , itemLevel, tooltip:DecodeLink(link) )
		return
	end

	-- Legion (Wow 7.0) currently has artifact relics disenchantable, but they don't follow normal equipment rules, and are a subtype of Gem
	-- convert this to a type we can handle
	if (itemType == "Gem" and  itemSubType == "Artifact Relic") then
		itemEquipLoc = "INVTYPE_TRINKET"
	end

	local class = const.InventoryTypes[itemEquipLoc] or 0

	if itemRarity < 2 or not (class and (class == const.WEAPON or class == const.ARMOR)) then
		--Enchantrix.Util.DebugPrint("GetIType", ENX_INFO, "Item not weapon or armor", "for: " .. itemRarity .. ", " .. class .. ", ".. itemType ..  ", ".. itemSubType ..  ", ".. itemEquipLoc ..  ", " ..link)
		return
	end

	return ("%d:%d:%d"):format(itemLevel,itemRarity,class)
end

function Enchantrix.Util.GetITypeDetailed(link)
	if not link then return end
	--Enchantrix.Util.DebugPrintQuick("GetIType type: ", type(link), " link: ", link, tooltip:DecodeLink(link) )	-- DEBUGGING

	local const = Enchantrix.Constants
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, invTexture = GetItemInfo(link)
    local effLevel, _preview, baseLevel = GetDetailedItemLevelInfo(link)

	if not (itemName and itemEquipLoc and itemRarity and itemLevel) then
		-- Enchantrix.Util.DebugPrintQuick("GetIType could not get item info for: ", link, itemName , itemEquipLoc , itemRarity , itemLevel, tooltip:DecodeLink(link) )
		return
	end

	-- Legion (Wow 7.0) currently has artifact relics disenchantable, but they don't follow normal equipment rules, and are a subtype of Gem
	-- convert this to a type we can handle
	if (itemType == "Gem" and  itemSubType == "Artifact Relic") then
		itemEquipLoc = "INVTYPE_TRINKET"
	end

	local class = const.InventoryTypes[itemEquipLoc] or 0

	if itemRarity < 2 or not (class and (class == const.WEAPON or class == const.ARMOR)) then
		--Enchantrix.Util.DebugPrint("GetIType", ENX_INFO, "Item not weapon or armor", "for: " .. itemRarity .. ", " .. class .. ", ".. itemType ..  ", ".. itemSubType ..  ", ".. itemEquipLoc ..  ", " ..link)
		return
	end

	return ("%d:%d:%d:%d:%d"):format(baseLevel,itemLevel,effLevel,itemRarity,class)
end



function Enchantrix.Util.DisenchantSkillRequiredForItemLevel(level, quality)
	if (not level or not quality) then
		-- Enchantrix.Util.DebugPrintQuick( "nil level or quality", level, quality )		-- DEBUGGING
		return 0
	end
	-- heirlooms, legendaries, etc. cannot be disenchanted
	if (quality > 4) then
		return 0;
	end

-- Need to double check Classic Classic!

	-- Classic BC (or later) has reintroduced skill levels
	if (Enchantrix.Constants.Classic and Enchantrix.Constants.Classic >= 2) then

		-- Wrath section copied as-is from Auctioneer Suite 7.2.5688
		if (level >= 200) then
			-- rares still bugged Nov 2011, guess they're going to stay that way
			if (quality ~= 3) then
				return 375;
			else
				return 325;
			end

		elseif (level >= 152) then
			-- rares still bugged Nov 2009
			if (quality ~= 3) then
				return 350;
			else
				return 325;
			end

		elseif (level >= 130) then
			return 325;

		elseif (level > 65) then
		-- someone changed their math with the Burning Crusade

			-- epics are a little different
			if (quality == 4) then
				if (level >= 90) then
					return 300;
				else
					return 225;
				end
			end

			if (level >= 100) then
				return 275;
			else
				return 225;
			end

		elseif (level > 20) then
			local temp = level - 21;
			temp = 1 + floor( temp / 5 );
			temp = temp * 25;
			if (temp > 275) then
				temp = 275;
			end
			return temp;
		end

		if (quality > 2) then
			return 25;
		end
	end

	return 1;
end


function Enchantrix.Util.InscriptionSkillRequiredForItem(link)
	if (not link) then
		--Enchantrix.Util.DebugPrintQuick( "nil link", link )
		return 0
	end
	local item = getItemIdFromLink(link);
	if (not item) then
		--Enchantrix.Util.DebugPrintQuick( "nil item from link", link )
		return 0
	end
	local resultBracket = Enchantrix.Constants.MillableItems[item];
	if (not resultBracket) then
		--Enchantrix.Util.DebugPrintQuick( "no mill result bracket from link", link )
		return 0
	end
	return Enchantrix.Constants.MillingSkillRequired[resultBracket];
end

function Enchantrix.Util.JewelCraftSkillRequiredForItem(link)
	if (not link) then
		--Enchantrix.Util.DebugPrintQuick( "nil link", link )
		return 0
	end
	local item = getItemIdFromLink(link);
	if (not item) then
		--Enchantrix.Util.DebugPrintQuick( "nil item from link", link )
		return 0
	end
	local minLevel = Enchantrix.Constants.ProspectMinLevels[item];
	return minLevel;
end

function Enchantrix.Util.DisenchantSkillRequiredForItem(link)
	if (not link) then
		--Enchantrix.Util.DebugPrintQuick( "nil link", link )
		return 0
	end
	local _, _, quality, itemLevel = GetItemInfo(link);
	return  Enchantrix.Util.DisenchantSkillRequiredForItemLevel(itemLevel, quality);
end


-- NOTE: this is an expensive function
-- we try to make it friendlier by caching the value and only checking every 5 seconds

Enchantrix.Util.SkillCacheRank = {}
Enchantrix.Util.SkillCacheTimeStamp = {}

function Enchantrix.Util.GetUserSkillByName( name )

	local cacheRank = Enchantrix.Util.SkillCacheRank[ name ]
	local cacheTime = Enchantrix.Util.SkillCacheTimeStamp[ name ]
	if (cacheRank and cacheTime
		and (GetTime() - cacheTime) < 5) then
		return cacheRank
	end

	local resultRank = 0

	--WOW 4.0 Cataclysm uses the new profession system
	if GetProfessions then
		local prof1, prof2 = GetProfessions()
		local skillName1, _, rank1
		local skillName2, _, rank2
		if prof1 then
			skillName1, _, rank1= GetProfessionInfo(prof1)
		end
		if prof2 then
			skillName2, _, rank2 = GetProfessionInfo(prof2)
		end

		if name == skillName1 then
			resultRank = rank1
		elseif name == skillName2 then
			resultRank = rank2
		end
	-- Classic uses old code path for finding skill rank
	elseif GetNumSkillLines then
		local MyExpandedHeaders = {}
		local i, j


		-- search the skill tree for the named skill
		for i=0, GetNumSkillLines(), 1 do
			local skillName, header, isExpanded, skillRank = GetSkillLineInfo(i)
			-- expand the header if necessary
			if ( header and not isExpanded ) then
				MyExpandedHeaders[i] = skillName
			end
		end

		ExpandSkillHeader(0)
		for i=1, GetNumSkillLines(), 1 do
			local skillName, header, _, skillRank = GetSkillLineInfo(i)
			-- check for the skill name
			if (skillName and not header) then
				if (skillName == name) then
					resultRank = skillRank
					-- no need to look at the rest of the skills
					break
				end
			end
		end

		-- close headers expanded during search process
		for i=0, GetNumSkillLines() do
			local skillName, header, isExpanded = GetSkillLineInfo(i)
			for j in pairs(MyExpandedHeaders) do
				if ( header and skillName == MyExpandedHeaders[j] ) then
					CollapseSkillHeader(i)
					MyExpandedHeaders[j] = nil
				end
			end
		end
	end

	Enchantrix.Util.SkillCacheRank[ name ] = resultRank
	Enchantrix.Util.SkillCacheTimeStamp[ name ] = GetTime()

	return resultRank
end


function Enchantrix.Util.GetUserEnchantingSkill()
	return Enchantrix.Util.GetUserSkillByName( _ENCH("Enchanting") )
end

function Enchantrix.Util.GetUserJewelCraftingSkill()
	return Enchantrix.Util.GetUserSkillByName( _ENCH("Jewelcrafting") )
end

function Enchantrix.Util.GetUserInscriptionSkill()
	return Enchantrix.Util.GetUserSkillByName( _ENCH("Inscription") )
end


-- an attempt to balance the price of essences when doing auction scans
-- still experimental
local function balanceEssencePrices(scanReagentTable, style)

	-- lesser_itemid = greater_itemid
	local essenceTable = {
		[10938] = 10939,	-- magic
		[16202] = 16203,  	-- eternal
		[16204] = 156930,	-- illusion dust
		[22447] = 22446,	-- planar
		[34056] = 34055,	-- cosmic
		[52718] = 52719,	-- celestial
	};

	for lesser, greater in pairs(essenceTable) do

		local priceLesser = scanReagentTable[ lesser ];
		local priceGreater = scanReagentTable[ greater ];

		if (style == "min") then
			-- for pessimists who want to hedge their bets (and possibly undervalue their disenchant predictions)
			priceLesser = math.min( priceLesser, priceGreater / 3 );
		elseif (style == "max") then
			-- for optimists who want to maximize profits when selling mats (and possibly overvalue their disenchant predictions)
			priceLesser = math.max( priceLesser, priceGreater / 3 );
		else 	-- if (style == "avg") then
			-- for those who want the middle of the road
			priceLesser = ( priceLesser + (priceGreater / 3) ) / 2;
		end

		scanReagentTable[ lesser ] = priceLesser;
		scanReagentTable[ greater ] = 3 * priceLesser;

	end

end

function Enchantrix.Util.GetPricingModel()
	local style = Enchantrix.Settings.GetSetting('ScanValueType');
	local extra = nil
	if (not style) then
		style = "average";
	end
	if (style:sub(1,9) == "adv:stat:") then
		extra = style:sub(10)
	end
	return style, extra
end

function Enchantrix.Util.CreateReagentPricingTable(scanReagentTable)
	if not scanReagentTable then
		scanReagentTable = {}
	else
		for k,v in pairs(scanReagentTable) do
			scanReagentTable[k] = nil
		end
	end
	local n = #Enchantrix.Constants.DisenchantReagentList;
	local style, extra = Enchantrix.Util.GetPricingModel();

	for i = 1, n do
		local reagent = Enchantrix.Constants.DisenchantReagentList[i];
		reagent = tonumber(reagent);

		local myValue = 0;
		if Enchantrix.Settings.GetSetting('fixed.'..reagent) then
			myValue = tonumber(Enchantrix.Settings.GetSetting('fixed.'..reagent..'.value')) or 0
		else
			local hsp, med, mkt, five = Enchantrix.Util.GetReagentPrice(reagent, extra);

			if (style == "auc4:hsp") then
				myValue = hsp;
			elseif (style == "auc4:med") then
				myValue = med;
			elseif (style == "baseline") then
				myValue = mkt;
			elseif (AucAdvanced and (style == "adv:market" or extra)) then
				myValue = five;
			else
				local c = 0
				if (hsp) then  myValue=myValue+hsp  c=c+1 end
				if (med) then  myValue=myValue+med  c=c+1 end
				if (mkt) then  myValue=myValue+mkt  c=c+1 end
				if (five) then myValue=myValue+five c=c+1 end
				myValue = myValue / c
			end

			-- provide fallbacks in case a valuation is missing
			-- don't leave a nil value!
			if (not myValue or myValue == 0) then
				myValue = hsp or five or mkt or 0;
			end
		end

		scanReagentTable[ reagent ] = myValue;
	end

	if (Enchantrix.Settings.GetSetting('AuctionBalanceEssencePrices')) then
		balanceEssencePrices(scanReagentTable, Enchantrix.Settings.GetSetting('AuctionBalanceEssenceStyle'));
	end

	return scanReagentTable;
end

local DebugLib = LibStub("DebugLib")
local debug, assert, printQuick
if DebugLib then
	debug, assert, printQuick = DebugLib("Enchantrix")
else
	function debug() end
	assert = debug
	printQuick = debug
end

ENX_CRITICAL = "Critical"
ENX_ERROR = "Error"
ENX_WARNING = "Warning"
ENX_NOTICE = "Notice"
-- info will only go to nLog
ENX_INFO = "Info"
-- Debug will print to the chat console as well as to nLog
ENX_DEBUG = "Debug"

function Enchantrix.Util.DebugPrint(mType, mLevel, mTitle, ...)
	-- function libDebugPrint(addon, message, category, title, errorCode, level)
	local message = debug:Dump(...)
	debug(message, mType, mTitle, nil, mLevel)
end

-- when you just want to print a message and don't care about the rest
function Enchantrix.Util.DebugPrintQuick(...)
	printQuick(...)
end




