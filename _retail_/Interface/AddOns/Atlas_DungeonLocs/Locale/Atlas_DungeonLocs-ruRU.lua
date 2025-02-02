-- $Id: Atlas_DungeonLocs-ruRU.lua 110 2023-03-20 15:02:11Z arithmandar $
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbertat gmail dot com>
	Copyright 2010 - Lothaer <lothayerat gmail dot com>, Atlas Team
	Copyright 2011 ~ 2023 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

--[[

-- Atlas Data  (Russian)
-- Compiled by StingerSoft
-- stingersoftat gmail dot com
-- Last Update: $Date: 2015-03-01 15:44:40 +0800 (週日, 01 三月 2015) $

--]]

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_DungeonLocs", "ruRU", false);

if L then
L["Blue"] = "Синий"
--[[Translation missing --]]
--[[ L["Change will take effect after next login; or type '/reload' command to reload addon"] = ""--]] 
L["Dungeon Locations"] = "Расположение подземелий"
L["Green"] = "Зелёный"
L["Instances"] = "Подземелья"
--[[Translation missing --]]
--[[ L["Meeting stone is inside the Sanctum of Order"] = ""--]] 
--[[Translation missing --]]
--[[ L["Raid entrance is inside the Sanctum Depths of Sanctum of Order"] = ""--]] 
--[[Translation missing --]]
--[[ L["Show %s's dungeon location maps"] = ""--]] 
L["White"] = "Белый"

end
