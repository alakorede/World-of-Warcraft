
TinyTooltipCharacterDB = {
	["spell"] = {
		["background"] = {
			0, -- [1]
			0, -- [2]
			0, -- [3]
			0.8, -- [4]
		},
		["showIcon"] = true,
		["borderColor"] = {
			0.6, -- [1]
			0.6, -- [2]
			0.6, -- [3]
			0.8, -- [4]
		},
	},
	["general"] = {
		["SavedVariablesPerCharacter"] = false,
		["statusbarFontFlag"] = "THINOUTLINE",
		["scale"] = "1.0",
		["mask"] = true,
		["bgfile"] = "gradual",
		["headerFont"] = "default",
		["borderSize"] = 1,
		["borderColor"] = {
			0.6, -- [1]
			0.6, -- [2]
			0.6, -- [3]
			0.8, -- [4]
		},
		["anchor"] = {
			["returnOnUnitFrame"] = false,
			["position"] = "cursorRight",
			["hiddenInCombat"] = false,
			["cp"] = "BOTTOM",
			["p"] = "BOTTOMRIGHT",
			["returnInCombat"] = false,
		},
		["background"] = {
			0, -- [1]
			0, -- [2]
			0, -- [3]
			0.7, -- [4]
		},
		["statusbarPosition"] = "bottom",
		["alwaysShowIdInfo"] = true,
		["bodyFontSize"] = "default",
		["statusbarFontSize"] = 10,
		["statusbarOffsetX"] = 0,
		["statusbarOffsetY"] = 0,
		["statusbarColor"] = "auto",
		["borderCorner"] = "None",
		["statusbarText"] = true,
		["statusbarHeight"] = 4,
		["skinMoreFrames"] = true,
		["headerFontFlag"] = "default",
		["headerFontSize"] = "default",
		["statusbarTexture"] = "Interface\\AddOns\\TinyTooltip\\texture\\StatusBar",
		["bodyFont"] = "default",
		["bodyFontFlag"] = "default",
	},
	["version"] = 2.6,
	["variables"] = {
	},
	["item"] = {
		["showItemIcon"] = true,
		["coloredItemBorder"] = true,
	},
	["quest"] = {
		["coloredQuestBorder"] = true,
	},
	["unit"] = {
		["npc"] = {
			["coloredBorder"] = "reaction",
			["elements"] = {
				{
					"raidIcon", -- [1]
					"classIcon", -- [2]
					"questIcon", -- [3]
					"name", -- [4]
				}, -- [1]
				{
					"levelValue", -- [1]
					"classifBoss", -- [2]
					"classifElite", -- [3]
					"classifRare", -- [4]
					"creature", -- [5]
					"reactionName", -- [6]
					"moveSpeed", -- [7]
				}, -- [2]
				["creature"] = {
					["color"] = "selection",
					["enable"] = true,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classifElite"] = {
					["color"] = "ffff33",
					["enable"] = true,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["moveSpeed"] = {
					["color"] = "e8e7a8",
					["enable"] = false,
					["wildcard"] = "%d%%",
					["filter"] = "none",
				},
				["questIcon"] = {
					["enable"] = true,
					["filter"] = "none",
				},
				["classifBoss"] = {
					["color"] = "ff0000",
					["enable"] = true,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["npcTitle"] = {
					["color"] = "99e8e8",
					["enable"] = true,
					["wildcard"] = "<%s>",
					["filter"] = "none",
				},
				["reactionName"] = {
					["color"] = "33ffff",
					["enable"] = true,
					["wildcard"] = "<%s>",
					["filter"] = "reaction6",
				},
				["factionBig"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["name"] = {
					["color"] = "default",
					["enable"] = true,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classifRare"] = {
					["color"] = "ffaaff",
					["enable"] = true,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["raidIcon"] = {
					["enable"] = true,
					["filter"] = "none",
				},
				["levelValue"] = {
					["color"] = "level",
					["enable"] = true,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
			},
			["anchor"] = {
				["returnOnUnitFrame"] = false,
				["position"] = "inherit",
				["hiddenInCombat"] = false,
				["cp"] = "BOTTOM",
				["p"] = "BOTTOMRIGHT",
				["returnInCombat"] = false,
			},
			["showTarget"] = true,
			["background"] = {
				["colorfunc"] = "default",
				["alpha"] = 0.9,
			},
			["showTargetBy"] = true,
			["grayForDead"] = false,
		},
		["player"] = {
			["elements"] = {
				{
					"raidIcon", -- [1]
					"roleIcon", -- [2]
					"pvpIcon", -- [3]
					"factionIcon", -- [4]
					"classIcon", -- [5]
					"title", -- [6]
					"name", -- [7]
					"realm", -- [8]
					"statusAFK", -- [9]
					"statusDND", -- [10]
					"statusDC", -- [11]
				}, -- [1]
				{
					"guildName", -- [1]
					"guildIndex", -- [2]
					"guildRank", -- [3]
					"guildRealm", -- [4]
				}, -- [2]
				{
					"levelValue", -- [1]
					"factionName", -- [2]
					"gender", -- [3]
					"raceName", -- [4]
					"className", -- [5]
					"isPlayer", -- [6]
					"role", -- [7]
					"moveSpeed", -- [8]
				}, -- [3]
				{
					"zone", -- [1]
				}, -- [4]
				["guildRank"] = {
					["color"] = "cc88ff",
					["enable"] = false,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["statusAFK"] = {
					["color"] = "ffd200",
					["enable"] = false,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["guildIndex"] = {
					["color"] = "cc88ff",
					["enable"] = false,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["zone"] = {
					["color"] = "ffffff",
					["enable"] = false,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["statusDC"] = {
					["color"] = "999999",
					["enable"] = false,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["raceName"] = {
					["color"] = "cccccc",
					["enable"] = true,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["role"] = {
					["color"] = "ffffff",
					["enable"] = false,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["factionName"] = {
					["color"] = "faction",
					["enable"] = true,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["raidIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["levelValue"] = {
					["color"] = "level",
					["enable"] = true,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["realm"] = {
					["color"] = "00eeee",
					["enable"] = false,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["roleIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["pvpIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["moveSpeed"] = {
					["color"] = "e8e7a8",
					["enable"] = false,
					["wildcard"] = "%d%%",
					["filter"] = "none",
				},
				["gender"] = {
					["color"] = "999999",
					["enable"] = false,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["guildRealm"] = {
					["color"] = "00cccc",
					["enable"] = false,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["statusDND"] = {
					["color"] = "ffd200",
					["enable"] = false,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["isPlayer"] = {
					["color"] = "ffffff",
					["enable"] = false,
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["factionIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["factionBig"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["guildName"] = {
					["color"] = "ff00ff",
					["enable"] = false,
					["wildcard"] = "<%s>",
					["filter"] = "none",
				},
				["title"] = {
					["color"] = "ccffff",
					["enable"] = false,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["name"] = {
					["color"] = "class",
					["enable"] = true,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["className"] = {
					["color"] = "ffffff",
					["enable"] = false,
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classIcon"] = {
					["enable"] = true,
					["filter"] = "none",
				},
			},
			["anchor"] = {
				["returnOnUnitFrame"] = false,
				["position"] = "inherit",
				["hiddenInCombat"] = false,
				["cp"] = "BOTTOM",
				["p"] = "BOTTOMRIGHT",
				["returnInCombat"] = false,
			},
			["coloredBorder"] = "default",
			["showTarget"] = false,
			["showModel"] = false,
			["background"] = {
				["colorfunc"] = "class",
				["alpha"] = "0.60",
			},
			["showTargetBy"] = false,
			["grayForDead"] = true,
		},
	},
}
