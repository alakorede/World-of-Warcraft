
BigTipDB = {
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
		["statusbarFontSize"] = 10,
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
			["returnInCombat"] = true,
		},
		["background"] = {
			0, -- [1]
			0, -- [2]
			0, -- [3]
			0.7, -- [4]
		},
		["statusbarPosition"] = "bottom",
		["statusbarOffsetX"] = 0,
		["skinMoreFrames"] = true,
		["bodyFontSize"] = "default",
		["alwaysShowIdInfo"] = true,
		["statusbarFontFlag"] = "THINOUTLINE",
		["statusbarOffsetY"] = 0,
		["statusbarColor"] = "auto",
		["borderCorner"] = "None",
		["statusbarText"] = true,
		["statusbarHeight"] = 4,
		["headerFontFlag"] = "default",
		["headerFontSize"] = "default",
		["statusbarTexture"] = "Interface\\AddOns\\TinyTooltip\\texture\\StatusBar",
		["bodyFont"] = "default",
		["bodyFontFlag"] = "default",
	},
	["version"] = 2.8,
	["variables"] = {
	},
	["item"] = {
		["coloredItemBorder"] = true,
		["showItemIcon"] = true,
	},
	["quest"] = {
		["coloredQuestBorder"] = true,
	},
	["unit"] = {
		["player"] = {
			["elements"] = {
				{
					"friendIcon", -- [1]
					"raidIcon", -- [2]
					"roleIcon", -- [3]
					"pvpIcon", -- [4]
					"factionIcon", -- [5]
					"classIcon", -- [6]
					"title", -- [7]
					"name", -- [8]
					"realm", -- [9]
					"statusAFK", -- [10]
					"statusDND", -- [11]
					"statusDC", -- [12]
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
					["enable"] = false,
					["color"] = "cc88ff",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["statusAFK"] = {
					["enable"] = false,
					["color"] = "ffd200",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["guildIndex"] = {
					["enable"] = false,
					["color"] = "cc88ff",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["zone"] = {
					["enable"] = false,
					["color"] = "ffffff",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["statusDC"] = {
					["enable"] = false,
					["color"] = "999999",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["raceName"] = {
					["enable"] = true,
					["color"] = "cccccc",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["role"] = {
					["enable"] = false,
					["color"] = "ffffff",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["factionName"] = {
					["enable"] = true,
					["color"] = "faction",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["raidIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["levelValue"] = {
					["enable"] = true,
					["color"] = "level",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["realm"] = {
					["enable"] = false,
					["color"] = "00eeee",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["roleIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["friendIcon"] = {
					["enable"] = true,
					["filter"] = "none",
				},
				["pvpIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["moveSpeed"] = {
					["enable"] = false,
					["color"] = "e8e7a8",
					["wildcard"] = "%d%%",
					["filter"] = "none",
				},
				["gender"] = {
					["enable"] = false,
					["color"] = "999999",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["guildRealm"] = {
					["enable"] = false,
					["color"] = "00cccc",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["statusDND"] = {
					["enable"] = false,
					["color"] = "ffd200",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["isPlayer"] = {
					["enable"] = false,
					["color"] = "ffffff",
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
				["className"] = {
					["enable"] = false,
					["color"] = "ffffff",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["title"] = {
					["enable"] = false,
					["color"] = "ccffff",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["guildName"] = {
					["enable"] = false,
					["color"] = "ff00ff",
					["wildcard"] = "<%s>",
					["filter"] = "none",
				},
				["name"] = {
					["enable"] = true,
					["color"] = "class",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classIcon"] = {
					["enable"] = true,
					["filter"] = "none",
				},
			},
			["showModel"] = false,
			["showTargetBy"] = false,
			["coloredBorder"] = "default",
			["anchor"] = {
				["returnOnUnitFrame"] = false,
				["position"] = "inherit",
				["hiddenInCombat"] = false,
				["cp"] = "BOTTOM",
				["p"] = "BOTTOMRIGHT",
				["returnInCombat"] = false,
			},
			["background"] = {
				["colorfunc"] = "class",
				["alpha"] = "0.60",
			},
			["showTarget"] = false,
			["grayForDead"] = true,
		},
		["npc"] = {
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
					["enable"] = true,
					["color"] = "selection",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classifElite"] = {
					["enable"] = true,
					["color"] = "ffff33",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["npcTitle"] = {
					["enable"] = true,
					["color"] = "99e8e8",
					["wildcard"] = "<%s>",
					["filter"] = "none",
				},
				["questIcon"] = {
					["enable"] = true,
					["filter"] = "none",
				},
				["classifBoss"] = {
					["enable"] = true,
					["color"] = "ff0000",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["moveSpeed"] = {
					["enable"] = false,
					["color"] = "e8e7a8",
					["wildcard"] = "%d%%",
					["filter"] = "none",
				},
				["reactionName"] = {
					["enable"] = true,
					["color"] = "33ffff",
					["wildcard"] = "<%s>",
					["filter"] = "reaction6",
				},
				["factionBig"] = {
					["enable"] = false,
					["filter"] = "none",
				},
				["name"] = {
					["enable"] = true,
					["color"] = "default",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classifRare"] = {
					["enable"] = true,
					["color"] = "ffaaff",
					["wildcard"] = "(%s)",
					["filter"] = "none",
				},
				["raidIcon"] = {
					["enable"] = true,
					["filter"] = "none",
				},
				["levelValue"] = {
					["enable"] = true,
					["color"] = "level",
					["wildcard"] = "%s",
					["filter"] = "none",
				},
				["classIcon"] = {
					["enable"] = false,
					["filter"] = "none",
				},
			},
			["showModel"] = true,
			["showTargetBy"] = true,
			["coloredBorder"] = "reaction",
			["anchor"] = {
				["returnOnUnitFrame"] = false,
				["position"] = "inherit",
				["hiddenInCombat"] = false,
				["cp"] = "BOTTOM",
				["p"] = "BOTTOMRIGHT",
				["returnInCombat"] = false,
			},
			["background"] = {
				["colorfunc"] = "default",
				["alpha"] = 0.9,
			},
			["showTarget"] = true,
			["grayForDead"] = false,
		},
	},
}
