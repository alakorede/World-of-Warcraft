
OmniCCDB = {
	["global"] = {
		["dbVersion"] = 6,
		["addonVersion"] = "10.2.5",
	},
	["profileKeys"] = {
		["Belashy - Goldrinn"] = "Default",
		["Chishy - Goldrinn"] = "Default",
		["Trystam - Goldrinn"] = "Default",
		["Alexshy - Goldrinn"] = "Default",
		["Migoshy - Aerie Peak"] = "Default",
		["Aimekalo - Goldrinn"] = "Default",
		["Eshy - Nemesis"] = "Default",
		["Kirashy - Nemesis"] = "Default",
		["Dishy - Goldrinn"] = "Default",
		["Jeshy - Goldrinn"] = "Default",
		["Natashy - Goldrinn"] = "Default",
		["Vacalactika - Nemesis"] = "Default",
		["Eshy - Steamwheedle Cartel"] = "Default",
		["Jeshy - Nemesis"] = "Default",
		["Eshy - Goldrinn"] = "Default",
		["Bankshy - Thrall"] = "Default",
		["Tamagoshy - Nemesis"] = "Default",
		["Radagashy - Goldrinn"] = "Default",
		["Turoshy - Nemesis"] = "Default",
		["Arieshy - Goldrinn"] = "Padrão",
		["Kerrishy - Goldrinn"] = "Default",
		["Aishy - Nemesis"] = "Default",
		["Sashy - Goldrinn"] = "Default",
		["Sharashy - Nemesis"] = "Default",
		["Wishy - Nemesis"] = "Default",
		["Falkoshy - Nemesis"] = "Default",
		["Hanushy - Nemesis"] = "Default",
		["Dishy - Nemesis"] = "Default",
		["Keishy - Aerie Peak"] = "Default",
		["Aenshy - Goldrinn"] = "Default",
		["Skoshy - Goldrinn"] = "Default",
		["Elshy - Goldrinn"] = "Default",
		["Migoshy - Goldrinn"] = "Default",
		["Aleshy - Goldrinn"] = "Default",
		["Goroshy - Nemesis"] = "Default",
		["Yashy - Nemesis"] = "Default",
		["Lilishy - Goldrinn"] = "Default",
		["Trystam - Nemesis"] = "Default",
		["Satishy - Nemesis"] = "Default",
		["Melishy - Goldrinn"] = "Default",
		["Neshy - Nemesis"] = "Default",
		["Satishy - Goldrinn"] = "Default",
		["Akishy - Goldrinn"] = "Default",
		["Kirashy - Dentarg"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["rules"] = {
				{
					["id"] = "Plater Nameplates Rule",
					["patterns"] = {
						"PlaterMainAuraIcon", -- [1]
						"PlaterSecondaryAuraIcon", -- [2]
						"ExtraIconRowIcon", -- [3]
					},
					["theme"] = "Plater Nameplates Theme",
					["priority"] = 1,
				}, -- [1]
			},
			["themes"] = {
				["Plater Nameplates Theme"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
				["Default"] = {
					["textStyles"] = {
						["seconds"] = {
						},
						["soon"] = {
						},
						["minutes"] = {
						},
					},
				},
				["Padrão"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
				},
			},
		},
		["Padrão"] = {
			["rules"] = {
				{
					["id"] = "auras",
					["patterns"] = {
						"Aura", -- [1]
						"Buff", -- [2]
						"Debuff", -- [3]
					},
					["name"] = "Auras",
					["enabled"] = false,
				}, -- [1]
				{
					["id"] = "plates",
					["patterns"] = {
						"Plate", -- [1]
					},
					["name"] = "Placas de identificação",
					["enabled"] = false,
				}, -- [2]
				{
					["id"] = "actions",
					["patterns"] = {
						"ActionButton", -- [1]
						"MultiBar", -- [2]
					},
					["name"] = "Barras de ação",
					["enabled"] = false,
				}, -- [3]
			},
			["themes"] = {
				["Padrão"] = {
					["textStyles"] = {
						["soon"] = {
						},
						["seconds"] = {
						},
						["minutes"] = {
						},
					},
				},
			},
		},
	},
}
OmniCC4Config = nil
