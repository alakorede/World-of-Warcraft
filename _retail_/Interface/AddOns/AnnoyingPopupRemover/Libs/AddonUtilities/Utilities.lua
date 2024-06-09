-- Utilities.lua
-- Written by KyrosKrane Sylvanblade (kyros@kyros.info)
-- Copyright (c) 2019 KyrosKrane Sylvanblade
-- Licensed under the MIT License, as per the included file.

-- File revision: fdc89eb
-- File last updated: 2023-11-14T19:39:22Z

-- This file creates a bunch of utility functions and constants, stored in the addon-specific table provided by WoW.

local addonName, addon = ...
if not addon.Utilities then addon.Utilities = {} end

-- set a default name for the addon. The main script should override this.
if not addon.USER_ADDON_NAME then addon.USER_ADDON_NAME = addonName end
if not addon.USER_ADDON_SHORT_NAME then addon.USER_ADDON_SHORT_NAME = addonName end


--#########################################
--# Chat output setup
--#########################################

-- Colors for printing in chat.
addon.Utilities.FONT_COLOR_CODE_START = "|cff"
addon.Utilities.CHAT_GREEN = addon.Utilities.FONT_COLOR_CODE_START .. "00ff00"
addon.Utilities.CHAT_BLUE = addon.Utilities.FONT_COLOR_CODE_START .. "0066ff"
addon.Utilities.CHAT_RED = addon.Utilities.FONT_COLOR_CODE_START .. "a00000"


-- This function converts non-string values into readable strings for easy concatenation with other string values
function addon.Utilities.MakeString(text)
	-- shortcut for faster lookup
	local texttype = type(text)

	-- get a printable version of the text input
	local output
	if "string" == texttype or "number" == texttype then
		output = text
	elseif "boolean" == texttype then
		output = text and "true" or "false"
	elseif "nil" == texttype then
		output = "nil"
	else
		-- function, userdata, thread, and table are not handled.
		-- Return the type as-is and let the other guy deal with it...
		output = texttype
	end

	return output
end -- addon.Utilities.MakeString()


-- Easymode text coloring
-- I considered just using WrapTextInColorCode(msg, colorcode)
-- but this way I have the flexibility to either include the leading |cff code or not
function addon.Utilities.Color(text, color)

	-- validate the color
	if not "string" == type(color) then
		-- non-string color values are not understood.
		-- just return the passed-in input unchanged.
		return text
	end

	-- get a printable version of the text input
	local output = addon.Utilities.MakeString(text)

	-- color as requested
	if (6 == #color) then
		-- assume no prefix, just a bare color
		return addon.Utilities.FONT_COLOR_CODE_START .. color .. output .. FONT_COLOR_CODE_CLOSE
	elseif (10 == #color) then
		-- assume prefix included
		return color .. output .. FONT_COLOR_CODE_CLOSE
	else
		-- unknown format for color code. Assume the caller knows what he's doing and just roll with it
		return color .. output .. FONT_COLOR_CODE_CLOSE
	end
end -- addon.Utilities.Color()


-- Print regular output to the chat frame.
function addon.Utilities.ChatPrint(msg)
	print(addon.Utilities.Color(addon.USER_ADDON_SHORT_NAME .. ":", addon.Utilities.CHAT_BLUE), msg)
end -- addon.Utilities.ChatPrint()


--#########################################
--# Debugging setup & utilities
--#########################################

-- Debug settings. True turns on debugging output, which users shouldn't normally need to see.
addon.DebugMode = false

-- Addons have to add this code early on to enable debug mode for alpha builds
--[======[

--@alpha@
addon.DebugMode = true
--@end-alpha@

--]======]


-- Print debug output to the chat frame.
function addon.Utilities.DebugPrint(...)
	if not addon.DebugMode then return end

	print(addon.Utilities.Color(addon.USER_ADDON_SHORT_NAME .. " Debug:", addon.Utilities.CHAT_RED), ...)
end -- addon.Utilities.DebugPrint()


-- Dumps a table into chat. Not intended for production use.
local MAX_RECURSION_DEPTH = 10
function addon.Utilities.DumpTable(TableToDump, indent, max_recursion)
	if not addon.DebugMode then return end

	if not indent then indent = 0 end
	if not max_recursion then max_recursion = MAX_RECURSION_DEPTH end

	local spacer = ""
	for i = 1, indent do -- this is auto skipped if indent is zero.
		spacer = spacer .. "    "
	end

	if indent > max_recursion then
		addon.Utilities.DebugPrint(spacer .. "Recursion is at " .. (max_recursion + 1) .. " already; aborting.")
		return
	end

	for k, v in pairs(TableToDump) do

		if "table" == type(k) then
			addon.Utilities.DebugPrint(spacer .. "Next keytype is table.")
			addon.Utilities.DumpTable(k, indent + 1, max_recursion)
			if "table" == type(v) then
				addon.Utilities.DebugPrint(spacer .. "Valtype is table.")
				addon.Utilities.DumpTable(v, indent + 1, max_recursion)
			else
				addon.Utilities.DebugPrint(spacer .. "For this table key, valtype is " .. type(v) .. ", valtext " .. tostring(v))
			end
		else
		if "table" == type(v) then
				addon.Utilities.DebugPrint(spacer .. "Keytext " .. tostring(k) .. ", keytype " .. type(k) .. ", valtype is table.")
				addon.Utilities.DumpTable(v, indent + 1, max_recursion)
		else
				addon.Utilities.DebugPrint(spacer .. "Keytext " .. tostring(k) .. ", keytype " .. type(k) .. ", valtype is " .. type(v) .. ", valtext " .. tostring(v))
		end

		end -- if key is table
	end -- for key/val pairs
end -- addon.Utilities.DumpTable()


-- Debugging code to see what the hell is being passed in...
function addon.Utilities.PrintVarArgs(...)
	if not addon.DebugMode then return end

	local n = select('#', ...)
	addon.Utilities.DebugPrint("There are " .. n .. " items in varargs.")
	local element
	for i = 1, n do
		element = select(i, ...)
		if "table" == type(element) then
			addon.Utilities.DebugPrint("Item " .. i .. " is table, dumping")
			addon.Utilities.DumpTable(element, 1)
		else
			addon.Utilities.DebugPrint("Item " .. i .. " is " .. tostring(element))
		end
	end
end -- addon.Utilities.PrintVarArgs()


--#########################################
--# General utilities
--#########################################


-- This function determines whether a point S is inside a triangle described by points A, B, and C.
-- Returns true (inside) or false (outside)
-- Adapted from the answer by John Bananas here: https://stackoverflow.com/questions/2049582/how-to-determine-if-a-point-is-in-a-2d-triangle
-- s, a, b, and c must all be objects (tables) with two elements named x and y.
function addon.Utilities.IsInsideTriangle(s, a, b, c)
	local as_x = s.x-a.x
	local as_y = s.y-a.y

	local s_ab = (b.x-a.x)*as_y-(b.y-a.y)*as_x > 0

	if (c.x-a.x)*as_y-(c.y-a.y)*as_x > 0 == s_ab then return false end

	if (c.x-b.x)*(s.y-b.y)-(c.y-b.y)*(s.x-b.x) > 0 ~= s_ab then return false end

	return true
end -- addon.Utilities.IsInsideTriangle()

--[===[
-- Test case
Gorged  = {x = 73.0, y = 54.2}
Caustic = {x = 66.5, y = 58.8}
Klepto  = {x = 68.4, y = 48.1}

outside = {x = 1, y = 1}
inside = {x = 68, y = 54}

if IsInsideTriangle(inside, Gorged, Caustic, Klepto) then print "inside reports true - PASS" else print "inside reports false - FAIL" end
if IsInsideTriangle(outside, Gorged, Caustic, Klepto) then print "outside reports true - FAIL" else print "outside reports false - PASS" end
-- ]===]




-- Splits a string into sections, based on a specified separator.
-- Split text into a list consisting of the strings in text,
-- separated by strings matching delimiter (which may be a pattern).
-- example: addon.Utilities.strsplit(",%s*", "Anna, Bob, Charlie,Dolores")
-- Adapted from Lua manual: http://lua-users.org/wiki/SplitJoin
function addon.Utilities.strsplit(delimiter, text)
	local list = {}
	local pos = 1
	if strfind("", delimiter, 1) then
		-- this would result in endless loops
		-- error("delimiter matches empty string!")

		-- return the entire string instead.
		tinsert(list, text)
		return list
	end
	while 1 do
		local first, last = strfind(text, delimiter, pos)
		if first then -- found?
			tinsert(list, strsub(text, pos, first-1))
			pos = last+1
		else
			tinsert(list, strsub(text, pos))
			break
		end
	end
	return list
end -- addon.Utilities.strsplit()
