
---------------------------------------------
-- Style Definition
---------------------------------------------
local ArtworkPath = "Interface\\Addons\\NeatPlates_Neon\\"
--local font = "Interface\\Addons\\NeatPlatesHub\\shared\\AccidentalPresidency.ttf"; local fontsize = 12;
local font = "Interface\\Addons\\NeatPlatesHub\\shared\\RobotoCondensed-Bold.ttf"
local fontsize = 10
--print(font, fontsize)
--local fontsize = 12;
local EmptyTexture = "Interface\\Addons\\NeatPlatesHub\\shared\\Empty"
local VerticalAdjustment = 12
local CastBarHorizontalAdjustment = 22
local CastBarVerticalAdjustment = VerticalAdjustment - 18
local NameTextVerticalAdjustment = VerticalAdjustment - 9

-- Non-Latin Font Bypass
local NonLatinLocales = { ["koKR"] = true, ["zhCN"] = true, ["zhTW"] = true, }
if NonLatinLocales[GetLocale()] == true then font = STANDARD_TEXT_FONT end


--   /run print(NeatPlates.ActiveThemeTable["Default"].frame.y)
---------------------------------------------
-- Default Style
---------------------------------------------
local Theme = {}
local StyleDefault = {}

StyleDefault.hitbox = {
	width = 104,
	height = 24,
	x = 0,
	y = 4,
}

StyleDefault.highlight = {
	texture =					ArtworkPath.."Neon_Highlight",
}

StyleDefault.healthborder = {
	texture		 =				ArtworkPath.."Neon_HealthOverlay",
	width = 128,
	_width = 128,
	height = 32,
	y = VerticalAdjustment,
	show = true,
}

StyleDefault.healthbar = {
	texture =					 ArtworkPath.."Neon_Bar",
	backdrop =					 ArtworkPath.."Neon_Bar_Backdrop",
	width = 102,
	_width = 102,
	height = 32,
	x = 0,
	y = VerticalAdjustment,
}

StyleDefault.powerbar = {
	texture =					 ArtworkPath.."Neon_Bar",
	backdrop =					 ArtworkPath.."Neon_Bar_Backdrop",
	width = 98,
	_width = 98,
	height = 6,
	x = 0,
	y = VerticalAdjustment - 5,
}

StyleDefault.castborder = {
	--texture =					ArtworkPath.."Cast_Normal",
	texture =					ArtworkPath.."Neon_CastOverlay",
	noicon =					ArtworkPath.."Neon_CastOverlay-noicon",
	width = 128,
	height = 32,
	x = CastBarHorizontalAdjustment,
	y = CastBarVerticalAdjustment,
	show = true,
}

StyleDefault.castnostop = {
	--texture =					ArtworkPath.."Cast_Shield",
	texture =					ArtworkPath.."Neon_CastOverlayNoInt",
	noicon =					ArtworkPath.."Neon_CastOverlayNoInt-noicon",
	width = 128,
	height = 32,
	x = CastBarHorizontalAdjustment,
	y = CastBarVerticalAdjustment,
	show = true,
}


StyleDefault.castbar = {
	texture =					 ArtworkPath.."Neon_Bar",
	width = 102,
	height = 30,
	x = CastBarHorizontalAdjustment-11,
	y = CastBarVerticalAdjustment-5,
	anchor = "CENTER",
	orientation = "HORIZONTAL",
}

StyleDefault.spellicon = {
	width = 16,
	height = 18,
	x = CastBarHorizontalAdjustment+48,
	y = CastBarVerticalAdjustment-.7,
	anchor = "CENTER",
	show = true,
	coords = {left = 0.15,right = .85,top = 0.15,bottom = .85}, 		-- Does nothing, at the moment
}

StyleDefault.spelltext = {
	typeface = font,
	size = fontsize,
	width = 150,
	height = 11,
	x = CastBarHorizontalAdjustment - 10,
	--NameTextVerticalAdjustment +
	y = CastBarVerticalAdjustment - 16,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "MIDDLE",
	shadow = true,
	show = true,
}

StyleDefault.spelltarget = {
	typeface = font,
	size = fontsize,
	width = 150,
	height = 11,
	x = CastBarHorizontalAdjustment - 10,
	--NameTextVerticalAdjustment +
	y = CastBarVerticalAdjustment - 26,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "MIDDLE",
	shadow = true,
	show = true,
}

StyleDefault.durationtext = {
	typeface = font,
	size = fontsize-1,
	width = 130,
	height = 11,
	x = CastBarHorizontalAdjustment - 30,
	--NameTextVerticalAdjustment +
	y = CastBarVerticalAdjustment - 5,
	align = "RIGHT",
	anchor = "CENTER",
	vertical = "MIDDLE",
	shadow = true,
	show = true,
}

--]]

StyleDefault.threatborder = {
	texture =				ArtworkPath.."Neon_AggroOverlayWhite",
	width = 256,
	_width = 256,
	height = 64,
	y = VerticalAdjustment + 1,
	x = 0,
	show = true,
}


StyleDefault.targetindicator = {
	texture = "Interface\\Addons\\NeatPlates_Neon\\Neon_Select",
	width = 128,
	_width = 128,
	height = 32,
	x = 0,
	y = VerticalAdjustment,
	anchor = "CENTER",
	show = true,
}

StyleDefault.targetindicator_arrowtop = {
	texture		 =				"Interface\\Addons\\NeatPlatesHub\\shared\\Arrow-Top",
	width = 64,
	height = 12,
	x = 0,
	y = VerticalAdjustment+18,
	anchor = "CENTER",
	show = true,
}

StyleDefault.targetindicator_arrowsides = {
	texture		 =				"Interface\\Addons\\NeatPlatesHub\\shared\\Arrow-Sides",
	neon_texture = 				"Interface\\Addons\\NeatPlatesHub\\shared\\Arrow-Neon-Sides",
	width = 138,
	height = 18,
	x = 0,
	y = VerticalAdjustment+0,
	anchor = "CENTER",
	show = true,
}

StyleDefault.targetindicator_arrowright = {
	texture		 =				"Interface\\Addons\\NeatPlatesHub\\shared\\Arrow-Right",
	width = 18,
	height = 18,
	x = 22,
	y = VerticalAdjustment+0,
	anchor = "RIGHT",
	show = true,
}

StyleDefault.targetindicator_arrowleft = {
	texture		 =				"Interface\\Addons\\NeatPlatesHub\\shared\\Arrow-Left",
	width = 18,
	height = 18,
	x = -22,
	y = VerticalAdjustment+0,
	anchor = "LEFT",
	show = true,
}

StyleDefault.raidicon = {
	width = 16,
	height = 16,
	x = -60,
	y = VerticalAdjustment + 1,
	anchor = "CENTER",
	texture = "Interface\\TargetingFrame\\UI-RaidTargetingIcons",
	show = true,
}

-- [[
StyleDefault.eliteicon = {
	texture = ArtworkPath.."Neon_EliteStar",
	width = 13,
	height = 13,
	x = -44,
	y = VerticalAdjustment + 6,
	anchor = "CENTER",
	show = true,
}
--]]

--[[
StyleDefault.eliteicon = {
	texture = ArtworkPath.."Neon_EliteIcon",
	width = 17,
	height = 17,
	x = -40,
	y = VerticalAdjustment + 6,
	anchor = "CENTER",
	show = true,
}
--]]

--[[
StyleDefault.eliteicon = {
	texture		 =				ArtworkPath.."Neon_HealthOverlayElite",
	width = 128,
	height = 32,
	y = VerticalAdjustment,
	show = true,
	anchor = "CENTER",
}
--]]

StyleDefault.skullicon = {
	texture = ArtworkPath.."Skull_Icon_White",
	width = 13,
	height = 13,
	x = -44,
	y = VerticalAdjustment + 5.5,
	anchor = "CENTER",
	show = true,
}


StyleDefault.name = {
	typeface = font,
	size = fontsize,
	width = 200,
	height = 11,
	x = 0,
	y = NameTextVerticalAdjustment,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "MIDDLE",
	shadow = true,
	flags = "NONE",
}

StyleDefault.subtext = {
	typeface = font,
	size = 11,
	width = 200,
	height = 11,
	x = 0,
	y = NameTextVerticalAdjustment - 10,
	yOffset = 0,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "MIDDLE",
	shadow = true,
	flags = "NONE",
}
--[[
StyleDefault.level = {
	typeface = font,
	size = fontsize,
	width = 40,
	height = 11,
	--x = 5,		-- for Star
	x = 12,		-- For Echelon
	--y = VerticalAdjustment + 5,		-- For star
	y = VerticalAdjustment + 6,		-- For echelon
	align = "LEFT",
	anchor = "LEFT",
	vertical = "TOP",
	flags = "OUTLINE",
	shadow = false,
	show = false,
}
--]]

StyleDefault.level = {
	typeface = font,
	size = fontsize,
	width = 40,
	height = 12,
	--x = 5,		-- for Star
	x = -18,		-- For Echelon
	--y = VerticalAdjustment + 5,		-- For star
	y = VerticalAdjustment + 4,		-- For echelon
	align = "LEFT",
	anchor = "CENTER",
	vertical = "TOP",
	flags = "OUTLINE",
	shadow = false,
	show = false,
}


StyleDefault.customart = {
	width = 14,
	height = 14,
	x = -44,
	y = VerticalAdjustment + 5,
	anchor = "CENTER",
	--show = true,
}

StyleDefault.customtext = {
	typeface = font,
	size = 11,
	width = 150,
	height = 11,
	x = 0,
	y = VerticalAdjustment + 1,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "MIDDLE",
	shadow = false,
	flags = "OUTLINE",
	show = true,
}

StyleDefault.frame = {
	y = 0,
}

StyleDefault.extrabar = {
	texture =					 ArtworkPath.."Neon_Bar",
	backdrop =					 ArtworkPath.."Neon_Bar_Backdrop",
	width = 98,
	height = 8,
	x = 0,
	y = VerticalAdjustment+6,
	anchor = "CENTER",
	orientation = "HORIZONTAL",
}

StyleDefault.extratext = {
	typeface =					font,
	size = 8,
	width = 98,
	height = 4,
	x = 0,
	y = VerticalAdjustment+5,
	align = "CENTER",
	anchor = "CENTER",
	vertical = "BOTTOM",
	shadow = true,
	flags = "NONE",
	show = true,
}

local CopyTable = NeatPlatesUtility.copyTable

-- No Bar
local StyleTextOnly = CopyTable(StyleDefault)
StyleTextOnly.threatborder.texture = EmptyTexture

-- Just testing
--[[
StyleTextOnly.threatborder.texture = ArtworkPath.."WarningGlowCircle"
StyleTextOnly.threatborder.width = 40
StyleTextOnly.threatborder.height = 40
StyleTextOnly.threatborder.y = VerticalAdjustment
--]]

--[[
StyleTextOnly.threatborder.texture = "Interface\\Addons\\NeatPlatesHub\\shared\\Aggro"
StyleTextOnly.threatborder.width = 128
StyleTextOnly.threatborder.height = 64
StyleTextOnly.threatborder.y = VerticalAdjustment -8 -16
--]]

StyleTextOnly.healthborder.y = VerticalAdjustment - 24
StyleTextOnly.healthborder.height = 64
StyleTextOnly.healthborder.texture = EmptyTexture
StyleTextOnly.healthbar.texture = EmptyTexture
StyleTextOnly.healthbar.backdrop = EmptyTexture
StyleTextOnly.powerbar.texture = EmptyTexture
StyleTextOnly.powerbar.backdrop = EmptyTexture
StyleTextOnly.eliteicon.texture = EmptyTexture
StyleTextOnly.extrabar.width = 70
StyleTextOnly.extrabar.y = VerticalAdjustment - 20
StyleTextOnly.extratext.y = VerticalAdjustment - 21
StyleTextOnly.extrabar.x = 0
StyleTextOnly.extratext.x = 0
StyleTextOnly.subtext.show = true
StyleTextOnly.subtext.size = fontsize - 2
StyleTextOnly.subtext.y = VerticalAdjustment-8
StyleTextOnly.subtext.width = 500
StyleTextOnly.customtext.show = false
StyleTextOnly.name.size = fontsize
StyleTextOnly.name.y = VerticalAdjustment + 1
StyleTextOnly.level.show = false
StyleTextOnly.skullicon.show = false
StyleTextOnly.eliteicon.show = false
StyleTextOnly.highlight.texture = "Interface\\Addons\\NeatPlatesHub\\shared\\Highlight"
StyleTextOnly.targetindicator.texture = "Interface\\Addons\\NeatPlatesHub\\shared\\Target"
StyleTextOnly.targetindicator.height = 72
StyleTextOnly.targetindicator.y = VerticalAdjustment -8 -18

StyleTextOnly.raidicon.x = 0
StyleTextOnly.raidicon.y = VerticalAdjustment - 25


--[[
-- Styles
local DefaultNoAura = CopyTable(StyleDefault)
local TextNoAura = CopyTable(StyleTextOnly)
local TextNoDescription = CopyTable(StyleTextOnly)

DefaultNoAura.raidicon = {
	width = 22,
	height = 22,
	x = 0,
	y = VerticalAdjustment + 20,
	anchor = "CENTER",
	texture = "Interface\\TargetingFrame\\UI-RaidTargetingIcons",
	show = true,
}

TextNoAura.raidicon = DefaultNoAura.raidicon

TextNoDescription.targetindicator.height = 55
TextNoDescription.targetindicator.y = VerticalAdjustment - 17
TextNoDescription.raidicon.x = 0
TextNoDescription.raidicon.y = VerticalAdjustment - 22

--]]


-- Active Styles
Theme["Default"] = StyleDefault
Theme["NameOnly"] = StyleTextOnly

--[[
Theme["Default-NoAura"] = DefaultNoAura

Theme["NameOnly-NoAura"] = TextNoAura
Theme["NameOnly-NoDescription"] = TextNoDescription
--]]

-- Widget
local WidgetConfig = {}
WidgetConfig.ClassIcon = { anchor = "TOPRIGHT", w = 24, h = 24 , x = 15 ,y = VerticalAdjustment -1 }
WidgetConfig.TotemIcon = { anchor = "TOP", w = 19, h = 18 , x = 0 ,y = VerticalAdjustment + 2 }
WidgetConfig.ThreatLineWidget = { anchor =  "CENTER", x = 0 ,y = VerticalAdjustment + 4 }
WidgetConfig.ThreatWheelWidget = { anchor =  "CENTER", x = 36 ,y = VerticalAdjustment + 12 } -- "CENTER", plate, 30, 18
WidgetConfig.ComboWidget = { anchor = "CENTER" , x = 0 ,y = VerticalAdjustment + 9.5 }
WidgetConfig.RangeWidget = { anchor = "CENTER" , x = 0 ,y = VerticalAdjustment + 0 }
WidgetConfig.DebuffWidget = { anchor = "BOTTOM", anchorRel = "TOP", x = 0, y = VerticalAdjustment - 13, y2 = VerticalAdjustment - 5 }
WidgetConfig.AbsorbWidget =	{ anchor="LEFT", x = 1 , y = VerticalAdjustment +1, w = 99, h = 6.5 }
WidgetConfig.QuestWidget = { anchor = "LEFT" , x = -12,y = VerticalAdjustment + 4}
WidgetConfig.QuestWidgetNameOnly = { anchor = "LEFT" , x = -2,y = VerticalAdjustment - 2}
WidgetConfig.ThreatPercentageWidget = { anchor = "RIGHT" , x = 13,y = VerticalAdjustment + 9 }
WidgetConfig.RangeWidget = { anchor = "CENTER", x=0, y=VerticalAdjustment - 5, w = 99, h = 6.5 }
WidgetConfig.ArenaWidget = { anchor = "LEFT" , x = -23, y = 13 }
WidgetConfig.ResourceWidget = { anchor = "CENTER" , x = 0 ,y = VerticalAdjustment + 9.5 }

WidgetConfig._meta = true		-- tells the parser to ignore this table; ie. don't convert to "style" template
Theme.WidgetConfig = WidgetConfig
local ThemeName = "Neon"

---------------------------------------------
-- NeatPlates Hub Integration
---------------------------------------------
NeatPlatesThemeList[ThemeName] = Theme
NeatPlatesHubFunctions.ApplyHubFunctions(Theme)





