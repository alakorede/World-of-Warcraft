
HekiliDB = {
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
		},
	},
	["profileKeys"] = {
		["Dishy - Pagle"] = "Default",
		["Osó - Pagle"] = "Default",
		["Carniça - Pagle"] = "Default",
		["Vedronys - Pagle"] = "Default",
		["Mulungu - Pagle"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["displays"] = {
				["Interrupts"] = {
					["rel"] = "CENTER",
					["y"] = -22.92666816711426,
					["x"] = -66.85163116455078,
				},
				["Cooldowns"] = {
					["rel"] = "CENTER",
					["y"] = -79.7039566040039,
					["x"] = -68.1478271484375,
				},
				["Primary"] = {
					["rel"] = "CENTER",
					["y"] = -68.55569458007812,
					["x"] = -2.963318109512329,
				},
				["AOE"] = {
					["rel"] = "CENTER",
					["y"] = -12.96380710601807,
					["x"] = -2.37030029296875,
				},
				["Defensives"] = {
					["rel"] = "CENTER",
					["y"] = -22.92602729797363,
					["x"] = -130.1478881835938,
				},
			},
			["enabled"] = "enable",
			["runOnce"] = {
				["forceReloadAllDefaultPriorities_20220228"] = true,
				["forceEnableAllClassesOnceDueToBug_20220225"] = true,
				["updateMaxRefreshToNewSpecOptions_20220222"] = true,
				["forceReloadClassDefaultOptions_20220306_6"] = true,
				["forceReloadClassDefaultOptions_20220306_9"] = true,
				["forceReloadClassDefaultOptions_20220306_1"] = true,
				["forceEnableEnhancedRecheckBoomkin_20210712"] = true,
				["forceReloadClassDefaultOptions_20220306_2"] = true,
				["forceReloadClassDefaultOptions_20220306_11"] = true,
				["resetAberrantPackageDates_20190728_1"] = true,
			},
			["specs"] = {
				{
					["package"] = "Protection",
					["settings"] = {
						["rend_refresh_time"] = 0,
						["execute_whirlwind_enabled"] = true,
						["execute_bloodthirst_enabled"] = true,
						["weave_cooldown_threshold"] = 1.5,
						["debuff_shattering_throw"] = false,
						["protection"] = "Protection",
						["macro_stance_dance"] = false,
						["execute_slam_prio"] = true,
						["arms"] = "Arms",
						["debuff_demoshout_enabled"] = false,
						["queueing_threshold"] = 60,
						["predict_tfb"] = true,
						["fury"] = "Fury",
						["optimize_overpower"] = false,
						["shout_spell"] = "commanding_shout",
						["debuff_sunder_enabled"] = false,
						["weave_rage_threshold"] = 100,
						["weaving_enabled"] = false,
						["weave_health_threshold"] = 20,
						["main_gcd_spell"] = "slam",
						["execute_queueing_enabled"] = true,
					},
				}, -- [1]
				{
					["settings"] = {
						["ranged_opener"] = false,
						["defensive_threshold"] = 60,
						["zealotry_macro"] = false,
						["captain_america"] = false,
						["assigned_aura"] = "retribution_aura",
						["maintain_blessing"] = true,
						["use_guardian"] = false,
						["zealotry_save"] = false,
						["maintain_aura"] = true,
						["wog_threshold"] = 90,
						["protection"] = "Protection (Himea Beta)",
						["selfless_healer"] = false,
						["retribution"] = "Retribution",
						["divine_storm_threshold"] = 8,
						["major_defensive"] = 20,
						["seal_of_righteousness"] = 4,
						["mana_judgement_threshold"] = 50,
						["divine_plea_threshold"] = 75,
						["assigned_blessing"] = "blessing_of_kings",
						["single_target_consecration"] = false,
						["ignore_consecration_movement"] = false,
					},
				}, -- [2]
				[11] = {
					["settings"] = {
						["bearweaving_enabled"] = false,
						["min_bite_rip_remains"] = 4,
						["optimize_trinkets"] = false,
						["balance"] = "Balance (IV)",
						["max_ff_delay"] = 0.1,
						["feral_tank"] = "Feral Tank (IV)",
						["ferociousbite_enabled"] = true,
						["flowerweaving_enabled"] = false,
						["min_weave_mana"] = 25,
						["bear_form_mode"] = "tank",
						["max_ff_energy"] = 15,
						["flowerweaving_mode"] = "any",
						["min_roar_offset"] = 24,
						["min_bite_sr_remains"] = 4,
						["feral_dps"] = "Feral DPS (IV)",
						["max_bite_energy"] = 25,
						["lunar_cooldown_leeway"] = 14,
						["bearweaving_instancetype"] = "raid",
						["bearweaving_bossonly"] = true,
						["flowerweaving_mingroupsize"] = 10,
						["rip_leeway"] = 3,
					},
					["autoPacks"] = {
						["feral_tank"] = "Feral Tank (IV)",
						["balance"] = "Balance (IV)",
						["feral_dps"] = "Feral DPS (IV)",
					},
				},
				[6] = {
					["settings"] = {
						["unholy"] = "Unholy (IV)",
						["frost"] = "Frost DK (IV)",
						["blood"] = "Blood (IV)",
					},
					["package"] = "Unholy (IV)",
				},
				[9] = {
					["settings"] = {
						["solo_curse"] = "curse_of_the_elements",
						["bane_priority"] = "bane_of_doom",
						["shadow_mastery"] = true,
						["group_type"] = "party",
						["group_curse"] = "curse_of_the_elements",
						["pet_twisting"] = true,
						["demonology"] = "Demonology",
						["destruction"] = "Destruction",
						["inferno_enabled"] = false,
						["affliction"] = "Affliction",
					},
					["package"] = "Demonology",
				},
			},
			["packs"] = {
				["Protection"] = {
					["source"] = "https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-rotation-cooldowns-abilities-pve",
					["builtIn"] = true,
					["date"] = 20231124,
					["spec"] = 1,
					["desc"] = "This priority is based on the wowhead guide.",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "heroic_strike",
								["criteria"] = "rage.current >= settings.queueing_threshold & rage.current > action.heroic_strike.spend + variable.build_sunder_cost + ( variable.maintain_sunder * action.devastate.spend ) + ( ( cooldown.shield_slam.remains < 2 ) * action.shield_slam.spend )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "( aggro || debuff.training_dummy.up ) & cooldown.shield_slam.up & rage.current >= action.shield_slam.spend",
								["action"] = "shield_block",
							}, -- [4]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 4 & buff.commanding_shout.remains <= 4",
								["action"] = "commanding_shout",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 4 & buff.battle_shout.remains <= 4",
								["action"] = "battle_shout",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_sunder || variable.maintain_sunder",
								["action"] = "devastate",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ( ! debuff.ap_reduction.up || ( debuff.demoralizing_shout.up & debuff.demoralizing_shout.remains < 3 ) )",
								["action"] = "demoralizing_shout",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.attack_speed_reduction.up || ( debuff.thunder_clap.up & debuff.attack_speed_reduction.remains < 3 )",
								["action"] = "thunder_clap",
							}, -- [11]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.remains & ! buff.revenge_usable.up & ( action.shield_slam.spend <= rage.current - action.devastate.spend + rage_gain * gcd )",
								["action"] = "devastate",
							}, -- [13]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "shield_bash",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "spell_reflection",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 30 & ! set_bonus.tier10prot_4pc",
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_sunder",
								["action"] = "devastate",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "group & active_dot.vigilance = 0",
								["action"] = "vigilance",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.current < action.commanding_shout.spend & buff.shout.remains <= 60",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 60",
								["action"] = "commanding_shout",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 60",
								["action"] = "battle_shout",
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["criteria"] = "cooldown.recklessness.up",
							}, -- [5]
							{
								["action"] = "recklessness",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down & ! cooldown.recklessness.up",
							}, -- [7]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 30 & ! set_bonus.tier10prot_4pc",
							}, -- [8]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [9]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "boss & buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "defensive_stance",
								["criteria"] = "buff.defensive_stance.down",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "cleave",
								["criteria"] = "rage.current >= settings.queueing_threshold & rage.current > action.cleave.spend + ( variable.maintain_sunder * action.devastate.spend ) + ( ( cooldown.shield_slam.remains < 2 ) * action.shield_slam.spend )",
							}, -- [3]
							{
								["action"] = "thunder_clap",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "shockwave",
							}, -- [5]
							{
								["action"] = "revenge",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "shockwave",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "shield_block",
								["criteria"] = "( aggro || debuff.training_dummy.up ) & cooldown.thunder_clap.remains & ! buff.revenge_usable.up & cooldown.thunder_clap.remains & cooldown.shield_slam.up & rage >= action.shield_slam.spend",
							}, -- [8]
							{
								["action"] = "shield_slam",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.shout.remains <= 4 & buff.commanding_shout.remains <= 4",
								["action"] = "commanding_shout",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.shout.remains <= 4 & buff.battle_shout.remains <= 4",
								["action"] = "battle_shout",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ( ! debuff.major_ap_reduction.up || ( debuff.demoralizing_shout.up & debuff.demoralizing_shout.remains < 3 ) )",
								["action"] = "demoralizing_shout",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.shield_slam.remains & ! buff.revenge_usable.up & ( action.shield_slam.spend <= rage.current - action.devastate.spend + rage_gain * gcd )",
								["action"] = "devastate",
							}, -- [13]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & ! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & ! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 5",
								["var_name"] = "maintain_sunder",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "should_sunder & debuff.sunder_armor.up & debuff.sunder_armor.remains < 2",
								["var_name"] = "emergency_sunder",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_sunder_cost",
								["value"] = "action.devastate.spend * ( 5 - debuff.sunder_armor.stack )",
								["value_else"] = "0",
								["criteria"] = "variable.build_sunder",
							}, -- [6]
						},
					},
					["version"] = 20231124,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - major_ap_reduction\n\nImported 5 action lists.\n",
					["profile"] = "## Warrior: Protection\n## https://www.wowhead.com/wotlk/guide/classes/warrior/protection/tank-rotation-cooldowns-abilities-pve\n## November 2023\n\n## Precombat\nactions.precombat+=/vigilance,if=group&active_dot.vigilance=0 \nactions.precombat+=/bloodrage,use_off_gcd=1,if=rage.current<action.commanding_shout.spend&buff.shout.remains<=60\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=60\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=60\nactions.precombat+=/berserker_stance,use_off_gcd=1,if=cooldown.recklessness.up\nactions.precombat+=/recklessness\nactions.precombat+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down&!cooldown.recklessness.up\nactions.precombat+=/bloodrage,use_off_gcd=1,if=rage.deficit>30&!set_bonus.tier10prot_4pc\nactions.precombat+=/charge\n\n## Default\nactions+=/call_action_list,name=init\nactions+=/charge\nactions+=/shield_bash\nactions+=/spell_reflection\nactions+=/bloodrage,use_off_gcd=1,if=rage.deficit>30&!set_bonus.tier10prot_4pc\nactions+=/use_items\nactions+=/devastate,if=variable.emergency_sunder\nactions+=/run_action_list,name=aoe,if=active_enemies>1\nactions+=/run_action_list,name=single\n\n## Init Vars\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=should_sunder&!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=should_sunder&!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<5\nactions.init+=/variable,name=emergency_sunder,value=should_sunder&debuff.sunder_armor.up&debuff.sunder_armor.remains<2\nactions.init+=/variable,name=build_sunder_cost,op=setif,if=variable.build_sunder,value=action.devastate.spend*(5-debuff.sunder_armor.stack),value_else=0\n\n## Single\nactions.single+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.single+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down\nactions.single+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&rage.current>action.heroic_strike.spend+variable.build_sunder_cost+(variable.maintain_sunder*action.devastate.spend)+((cooldown.shield_slam.remains<2)*action.shield_slam.spend)\nactions.single+=/shield_block,if=(aggro||debuff.training_dummy.up)&cooldown.shield_slam.up&rage.current>=action.shield_slam.spend\nactions.single+=/shield_slam\nactions.single+=/revenge\nactions.single+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=4&buff.commanding_shout.remains<=4\nactions.single+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=4&buff.battle_shout.remains<=4\nactions.single+=/devastate,if=variable.build_sunder||variable.maintain_sunder\nactions.single+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&(!debuff.ap_reduction.up||(debuff.demoralizing_shout.up&debuff.demoralizing_shout.remains<3))\nactions.single+=/thunder_clap,if=!debuff.attack_speed_reduction.up||(debuff.thunder_clap.up&debuff.attack_speed_reduction.remains<3)\nactions.single+=/shockwave\nactions.single+=/devastate,if=cooldown.shield_slam.remains&!buff.revenge_usable.up&(action.shield_slam.spend<=rage.current-action.devastate.spend+rage_gain*gcd)\n\n## Cleave\nactions.aoe+=/shattering_throw,if=boss&buff.bloodlust.up&debuff.shattering_throw.down\nactions.aoe+=/defensive_stance,use_off_gcd=1,if=buff.defensive_stance.down\nactions.aoe+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&rage.current>action.cleave.spend+(variable.maintain_sunder*action.devastate.spend)+((cooldown.shield_slam.remains<2)*action.shield_slam.spend)\nactions.aoe+=/thunder_clap\nactions.aoe+=/shockwave,if=active_enemies>3\nactions.aoe+=/revenge\nactions.aoe+=/shockwave\nactions.aoe+=/shield_block,use_off_gcd=1,if=(aggro||debuff.training_dummy.up)&cooldown.thunder_clap.remains&!buff.revenge_usable.up&cooldown.thunder_clap.remains&cooldown.shield_slam.up&rage>=action.shield_slam.spend\nactions.aoe+=/shield_slam\nactions.aoe+=/commanding_shout,if=assigned_shout.commanding_shout&buff.shout.remains<=4&buff.commanding_shout.remains<=4\nactions.aoe+=/battle_shout,if=assigned_shout.battle_shout&buff.shout.remains<=4&buff.battle_shout.remains<=4\nactions.aoe+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&(!debuff.major_ap_reduction.up||(debuff.demoralizing_shout.up&debuff.demoralizing_shout.remains<3))\nactions.aoe+=/devastate,if=cooldown.shield_slam.remains&!buff.revenge_usable.up&(action.shield_slam.spend<=rage.current-action.devastate.spend+rage_gain*gcd)",
					["basedOn"] = "Protection Warrior (IV)",
					["author"] = "Supernuss",
				},
				["Protection (Himea Beta)"] = {
					["source"] = "https://wowtbc.gg/cata/class-guides/protection-paladin/",
					["builtIn"] = true,
					["date"] = 20240502,
					["spec"] = 2,
					["desc"] = "Protection Paladin rotation for Hekili. Based on wowsims logic, refactored for 9696 rotation",
					["lists"] = {
						["single"] = {
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.major_defensive",
								["action"] = "lay_on_hands",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.major_defensive & buff.ardent_defender.down",
								["action"] = "guardian_of_ancient_kings",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.major_defensive & buff.guardian_of_ancient_kings.down",
								["action"] = "ardent_defender",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.defensive_threshold & buff.defensive.down",
								["action"] = "holy_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.defensive_threshold & buff.defensive.down",
								["action"] = "divine_protection",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.defensive_threshold & buff.defensive.down & settings.use_guardian",
								["action"] = "divine_guardian",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down",
								["action"] = "seal_of_truth",
							}, -- [7]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "settings.captain_america",
								["action"] = "avengers_shield",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 0 || mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 3 & health.percent < settings.wog_threshold",
								["action"] = "word_of_glory",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 3",
								["action"] = "shield_of_the_righteous",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "holy_power < 3",
								["action"] = "crusader_strike",
							}, -- [13]
							{
								["action"] = "avengers_shield",
								["enabled"] = true,
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct < 20",
								["action"] = "hammer_of_wrath",
							}, -- [15]
							{
								["action"] = "judgement",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [17]
							{
								["action"] = "holy_wrath",
								["enabled"] = true,
							}, -- [18]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "cleave",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "May 2024",
								["criteria"] = "buff.righteous_fury.down",
								["action"] = "righteous_fury",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.retribution_aura",
								["action"] = "retribution_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.concentration_aura",
								["action"] = "concentration_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.crusader_aura",
								["action"] = "crusader_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.devotion_aura",
								["action"] = "devotion_aura",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.resistance_aura",
								["action"] = "resistance_aura",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blessing.up & settings.maintain_blessing & assigned_blessing.blessing_of_kings",
								["action"] = "blessing_of_kings",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blessing.up & settings.maintain_blessing & assigned_blessing.blessing_of_might",
								["action"] = "blessing_of_might",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.remains < 360 || buff.seal.down",
								["action"] = "seal_of_truth",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( holy_power < 3 || mana.percent < settings.divine_plea_threshold ) & settings.ranged_opener",
								["action"] = "divine_plea",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "( buff.inquisition.down || buff.inquisition.remains < 6 ) & holy_power = 3 & settings.ranged_opener",
								["action"] = "inquisition",
							}, -- [11]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "settings.ranged_opener",
								["action"] = "avenging_wrath",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "settings.ranged_opener",
								["action"] = "exorcism",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "settings.ranged_opener",
								["action"] = "avengers_shield",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "settings.ranged_openerr",
								["action"] = "judgement",
							}, -- [16]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
						},
						["cleave"] = {
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.major_defensive",
								["action"] = "lay_on_hands",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.major_defensive & buff.ardent_defender.down",
								["action"] = "guardian_of_ancient_kings",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.major_defensive & buff.guardian_of_ancient_kings.down",
								["action"] = "ardent_defender",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.defensive_threshold & buff.defensive.down",
								["action"] = "holy_shield",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.defensive_threshold & buff.defensive.down",
								["action"] = "divine_protection",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.defensive_threshold & buff.defensive.down & settings.use_guardian",
								["action"] = "divine_guardian",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "health.percent < settings.major_defensive",
								["action"] = "lay_on_hands",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down",
								["action"] = "seal_of_truth",
							}, -- [8]
							{
								["action"] = "avenging_wrath",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 0 || mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 3 & health.percent < settings.wog_threshold",
								["action"] = "word_of_glory",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power = 3",
								["action"] = "inquisition",
							}, -- [12]
							{
								["action"] = "hammer_of_the_righteous",
								["enabled"] = true,
							}, -- [13]
							{
								["action"] = "avengers_shield",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "consecration",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "holy_wrath",
								["enabled"] = true,
							}, -- [16]
							{
								["action"] = "judgement",
								["enabled"] = true,
							}, -- [17]
						},
					},
					["version"] = 20240502,
					["warnings"] = "Imported 5 action lists.\n",
					["author"] = "Himea",
					["basedOn"] = "Protection 69",
					["profile"] = "# Paladin: Protection\n# Himea's Beta APL - Discord: himea.saito\n# Modified from WoWTBC Cata Guides - https://wowtbc.gg/cata/class-guides/protection-paladin/\n# May 2024\n\n## Precombat\nactions.precombat+=/righteous_fury,if=buff.righteous_fury.down\nactions.precombat+=/retribution_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.retribution_aura\nactions.precombat+=/concentration_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.concentration_aura\nactions.precombat+=/crusader_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.crusader_aura\nactions.precombat+=/devotion_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.devotion_aura\nactions.precombat+=/resistance_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.resistance_aura\nactions.precombat+=/blessing_of_kings,if=!buff.blessing.up&settings.maintain_blessing&assigned_blessing.blessing_of_kings\nactions.precombat+=/blessing_of_might,if=!buff.blessing.up&settings.maintain_blessing&assigned_blessing.blessing_of_might\nactions.precombat+=/seal_of_truth,if=buff.seal.remains<360||buff.seal.down\nactions.precombat+=/divine_plea,if=(holy_power<3||mana.percent<settings.divine_plea_threshold)&settings.ranged_opener\nactions.precombat+=/inquisition,if=(buff.inquisition.down||buff.inquisition.remains<6)&holy_power=3&settings.ranged_opener\nactions.precombat+=/potion\nactions.precombat+=/avenging_wrath,if=settings.ranged_opener\nactions.precombat+=/exorcism,if=settings.ranged_opener\nactions.precombat+=/avengers_shield,if=settings.ranged_opener\nactions.precombat+=/judgement,if=settings.ranged_openerr\n\n## Default\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single\n\n## Init Parameters\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\n\n## Cleave\nactions.cleave+=/lay_on_hands,if=health.percent<settings.major_defensive\nactions.cleave+=/guardian_of_ancient_kings,if=health.percent<settings.major_defensive&buff.ardent_defender.down\nactions.cleave+=/ardent_defender,if=health.percent<settings.major_defensive&buff.guardian_of_ancient_kings.down\nactions.cleave+=/holy_shield,if=health.percent<settings.defensive_threshold&buff.defensive.down\nactions.cleave+=/divine_protection,if=health.percent<settings.defensive_threshold&buff.defensive.down\nactions.cleave+=/divine_guardian,if=health.percent<settings.defensive_threshold&buff.defensive.down&settings.use_guardian\nactions.cleave+=/lay_on_hands,if=health.percent<settings.major_defensive\nactions.cleave+=/seal_of_truth,if=buff.seal.down\nactions.cleave+=/avenging_wrath\nactions.cleave+=/divine_plea,if=holy_power=0||mana.percent<settings.divine_plea_threshold\nactions.cleave+=/word_of_glory,if=holy_power=3&health.percent<settings.wog_threshold\nactions.cleave+=/inquisition,if=holy_power=3\nactions.cleave+=/hammer_of_the_righteous\nactions.cleave+=/avengers_shield\nactions.cleave+=/consecration\nactions.cleave+=/holy_wrath\nactions.cleave+=/judgement\n\n## Singleactions.defensive+=/guardian_of_ancient_kings,if=health.percent<50\nactions.single+=/lay_on_hands,if=health.percent<settings.major_defensive\nactions.single+=/guardian_of_ancient_kings,if=health.percent<settings.major_defensive&buff.ardent_defender.down\nactions.single+=/ardent_defender,if=health.percent<settings.major_defensive&buff.guardian_of_ancient_kings.down\nactions.single+=/holy_shield,if=health.percent<settings.defensive_threshold&buff.defensive.down\nactions.single+=/divine_protection,if=health.percent<settings.defensive_threshold&buff.defensive.down\nactions.single+=/divine_guardian,if=health.percent<settings.defensive_threshold&buff.defensive.down&settings.use_guardian\nactions.single+=/seal_of_truth,if=buff.seal.down\nactions.single+=/avenging_wrath\nactions.single+=/avengers_shield,if=settings.captain_america\nactions.single+=/divine_plea,if=holy_power=0||mana.percent<settings.divine_plea_threshold\nactions.single+=/word_of_glory,if=holy_power=3&health.percent<settings.wog_threshold\nactions.single+=/shield_of_the_righteous,if=holy_power=3\nactions.single+=/crusader_strike,if=holy_power<3\nactions.single+=/avengers_shield\nactions.single+=/hammer_of_wrath,if=target.health.pct<20\nactions.single+=/judgement\nactions.single+=/consecration\nactions.single+=/holy_wrath",
				},
				["Frost DK (wowtbc.gg)"] = {
					["source"] = "https://wowtbc.gg/wotlk/class-guides/frost-death-knight/",
					["builtIn"] = true,
					["date"] = 20221003,
					["spec"] = 6,
					["desc"] = "This priority is based upon the wowtbc.gg Wrath guide.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [3]
							{
								["action"] = "unbreakable_armor",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current < 2",
								["action"] = "blood_tap",
							}, -- [7]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever < active_enemies || active_dot.blood_plague < active_enemies || glyph.disease.enabled & ( dot.frost_fever.remains < 5 || dot.blood_plague.remains < 5 ) )",
								["action"] = "pestilence",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current + frost_runes.current + unholy_runes.current < 3",
								["action"] = "empower_rune_weapon",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & buff.killing_machine.up",
								["action"] = "howling_blast",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies = 1 & buff.killing_machine.up",
								["action"] = "frost_strike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.rime.up",
								["action"] = "howling_blast",
							}, -- [13]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "horn_of_winter",
								["enabled"] = true,
							}, -- [15]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["potion"] = "indestructible_potion",
								["action"] = "potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down",
								["action"] = "blood_presence",
							}, -- [2]
							{
								["action"] = "raise_dead",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [4]
							{
								["action"] = "army_of_the_dead",
								["enabled"] = true,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit > 10",
								["action"] = "horn_of_winter",
							}, -- [6]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [7]
						},
					},
					["version"] = 20221003,
					["warnings"] = "Imported 2 action lists.\n",
					["author"] = "wowtbc.gg",
					["profile"] = "## Frost Death Knight (wowtbc.gg)\n## 3 October 2022\n\nactions.precombat+=/potion,name=indestructible_potion\nactions.precombat+=/blood_presence,if=buff.presence.down\nactions.precombat+=/raise_dead\nactions.precombat+=/death_and_decay\nactions.precombat+=/army_of_the_dead\nactions.precombat+=/horn_of_winter,if=runic_power.deficit>10\nactions.precombat+=/potion\n\nactions+=/mind_freeze\nactions+=/icy_touch,if=!dot.frost_fever.ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/unbreakable_armor\nactions+=/potion\nactions+=/use_items\nactions+=/blood_tap,if=blood_runes.current<2\nactions+=/obliterate\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever<active_enemies||active_dot.blood_plague<active_enemies||glyph.disease.enabled&(dot.frost_fever.remains<5||dot.blood_plague.remains<5))\nactions+=/empower_rune_weapon,if=blood_runes.current+frost_runes.current+unholy_runes.current<3\nactions+=/howling_blast,if=active_enemies>1&buff.killing_machine.up\nactions+=/frost_strike,if=active_enemies=1&buff.killing_machine.up\nactions+=/howling_blast,if=buff.rime.up\nactions+=/frost_strike\nactions+=/horn_of_winter",
				},
				["Unholy"] = {
					["source"] = "WoWSims",
					["builtIn"] = true,
					["date"] = 20240712,
					["spec"] = 6,
					["desc"] = "This priority is based on the WoWSims.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die >= 15 || active_enemies > 1",
								["action"] = "dark_transformation",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 & active_enemies < 2",
								["action"] = "scourge_strike",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 & active_enemies < 2",
								["action"] = "festering_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 3 & active_enemies < 2",
								["action"] = "death_coil",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "unholy_frenzy",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up || target.time_to_die <= 13",
								["action"] = "synapse_springs",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up || target.time_to_die <= 13",
								["action"] = "blood_fury",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up || target.time_to_die <= 25",
								["action"] = "potion",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up & buff.synapse_springs.up",
								["action"] = "outbreak",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up & ( cooldown.unholy_frenzy.up || buff.unholy_frenzy.up || buff.bloodlust.up )",
								["action"] = "summon_gargoyle",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "time > 15 & ( ! dot.frost_fever.ticking || ! dot.blood_plague.ticking )",
								["action"] = "outbreak",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever + active_dot.blood_plague < active_enemies * 2 )",
								["action"] = "pestilence",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "! moving & fight_remains > 5 || active_enemies > 1",
								["action"] = "death_and_decay",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "blood_boil",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.time_to_2 <= 1 & frost_runes.time_to_2 <= 1",
								["action"] = "festering_strike",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "unholy_runes.time_to_2 <= 1",
								["action"] = "scourge_strike",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.time_to_2 <= 1 & ! action.festering_strike.known",
								["action"] = "blood_strike",
							}, -- [20]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.summon_gargoyle.ready & ! buff.runic_corruption.up & ! buff.bloodlust.up",
								["action"] = "death_coil",
							}, -- [21]
							{
								["enabled"] = true,
								["criteria"] = "frost_runes.time_to_2 <= 1 & ( ! action.festering_strike.known || active_enemies > 2 )",
								["action"] = "icy_touch",
							}, -- [22]
							{
								["action"] = "scourge_strike",
								["enabled"] = true,
							}, -- [23]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.current >= 44 & ( ! buff.dark_transformation.up & buff.shadow_infusion.stack < 5 ) || ( buff.sudden_doom.up & buff.sudden_doom.remains < buff.dark_transformation.remains )",
								["action"] = "death_coil",
							}, -- [24]
							{
								["action"] = "festering_strike",
								["enabled"] = true,
							}, -- [25]
							{
								["enabled"] = true,
								["criteria"] = "! action.festering_strike.known",
								["action"] = "blood_strike",
							}, -- [26]
							{
								["enabled"] = true,
								["criteria"] = "! cooldown.summon_gargoyle.ready || buff.sudden_doom.up || runic_power.current >= 100",
								["action"] = "death_coil",
							}, -- [27]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current = 0 & blood_runes.time_to_1 > 2",
								["action"] = "blood_tap",
							}, -- [28]
							{
								["enabled"] = true,
								["criteria"] = "! buff.horn_of_winter.up",
								["action"] = "horn_of_winter",
							}, -- [29]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current = 0 & frost_runes.current = 0 & unholy_runes.current = 0",
								["action"] = "empower_rune_weapon",
							}, -- [30]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "unholy_presence",
								["description"] = "Based on WoWSims",
								["criteria"] = "buff.presence.down",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_ghouls.enabled",
								["action"] = "raise_dead",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "army_of_the_dead",
								["precombat_seconds"] = "10",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "horn_of_winter",
								["precombat_seconds"] = "1",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "potion",
								["precombat_seconds"] = "1",
							}, -- [5]
						},
					},
					["version"] = 20240712,
					["warnings"] = "This profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 2 action lists.\n",
					["author"] = "Supernuss",
					["profile"] = "## Unholy DeathKnight\n# Based on WoWSims\n\nactions.precombat+=/unholy_presence,if=buff.presence.down\nactions.precombat+=/raise_dead,if=talent.master_of_ghouls.enabled\nactions.precombat+=/army_of_the_dead,precombat_seconds=10\nactions.precombat+=/horn_of_winter,precombat_seconds=1\nactions.precombat+=/potion,precombat_seconds=1\n\nactions+=/mind_freeze\nactions+=/dark_transformation,if=target.time_to_die>=15||active_enemies>1\nactions+=/scourge_strike,if=target.time_to_die<3&active_enemies<2\nactions+=/festering_strike,if=target.time_to_die<3&active_enemies<2\nactions+=/death_coil,if=target.time_to_die<3&active_enemies<2\n\nactions+=/unholy_frenzy,if=buff.unholy_strength.up\nactions+=/synapse_springs,if=buff.unholy_strength.up||target.time_to_die<=13\nactions+=/blood_fury,if=buff.unholy_strength.up||target.time_to_die<=13\nactions+=/potion,if=buff.unholy_strength.up||target.time_to_die<=25\nactions+=/outbreak,if=buff.unholy_strength.up&buff.synapse_springs.up\nactions+=/summon_gargoyle,if=buff.unholy_strength.up&(cooldown.unholy_frenzy.up||buff.unholy_frenzy.up||buff.bloodlust.up)\nactions+=/outbreak,if=time>15&(!dot.frost_fever.ticking||!dot.blood_plague.ticking)\nactions+=/icy_touch,if=!dot.frost_fever.ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever+active_dot.blood_plague<active_enemies*2)\nactions+=/death_and_decay,if=!moving&fight_remains>5||active_enemies>1\nactions+=/blood_boil,if=active_enemies>2\nactions+=/festering_strike,if=blood_runes.time_to_2<=1&frost_runes.time_to_2<=1\nactions+=/scourge_strike,if=unholy_runes.time_to_2<=1\nactions+=/blood_strike,if=blood_runes.time_to_2<=1&!action.festering_strike.known\nactions+=/death_coil,if=!cooldown.summon_gargoyle.ready&!buff.runic_corruption.up&!buff.bloodlust.up\nactions+=/icy_touch,if=frost_runes.time_to_2<=1&(!action.festering_strike.known||active_enemies>2)\nactions+=/scourge_strike\nactions+=/death_coil,if=runic_power.current>=44&(!buff.dark_transformation.up&buff.shadow_infusion.stack<5)||(buff.sudden_doom.up&buff.sudden_doom.remains<buff.dark_transformation.remains)\nactions+=/festering_strike\nactions+=/blood_strike,if=!action.festering_strike.known\nactions+=/death_coil,if=!cooldown.summon_gargoyle.ready||buff.sudden_doom.up||runic_power.current>=100\nactions+=/blood_tap,if=blood_runes.current=0&blood_runes.time_to_1>2\nactions+=/horn_of_winter,if=!buff.horn_of_winter.up\nactions+=/empower_rune_weapon,if=blood_runes.current=0&frost_runes.current=0&unholy_runes.current=0",
				},
				["Frost"] = {
					["source"] = "WoWSims",
					["builtIn"] = true,
					["date"] = 20240712,
					["spec"] = 6,
					["desc"] = "This priority is based on the WoWSims.",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current = 0 & frost_runes.current = 0 & unholy_runes.current = 0",
								["action"] = "empower_rune_weapon",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "pillar_of_frost",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "blood_fury",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up & buff.pillar_of_frost.up",
								["action"] = "potion",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.unholy_strength.up",
								["action"] = "synapse_springs",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 3",
								["action"] = "frost_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 3",
								["action"] = "obliterate",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 3",
								["action"] = "howling_blast",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "raise_dead",
								["description"] = "Raise dead conditions -TODO: add Impatience of Youth as alternative to synapse_springs",
								["criteria"] = "buff.pillar_of_frost.up & buff.unholy_strength.up & buff.synapse_springs.up",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "blood_tap",
								["description"] = "Blood tap conditions",
								["criteria"] = "death_runes.current <= 1 & blood_runes.time_to_1 > 5.5",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["description"] = "frost_strike under certain runic power conditions",
								["criteria"] = "runic_power.current >= 105",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "outbreak",
								["description"] = "Ensuring diseases are active",
								["criteria"] = "! dot.frost_fever.ticking || ! dot.blood_plague.ticking",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "howling_blast",
								["description"] = "Howling Blast with Rime proc",
								["criteria"] = "buff.freezing_fog.up",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "howling_blast",
								["description"] = "Howling Blast if Frost Fever is not active",
								["criteria"] = "! dot.frost_fever.ticking",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "death_and_decay",
								["description"] = "Use DnD in AoE situation",
								["criteria"] = "! moving & fight_remains > 5 & active_enemies > 1",
							}, -- [15]
							{
								["enabled"] = true,
								["action"] = "plague_strike",
								["description"] = "Ensuring Plague Strike is used with Unholy runes and Blood Plague is not active",
								["criteria"] = "! dot.blood_plague.ticking & unholy_runes.current = 2",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["description"] = "Using Frost Strike with certain conditions on runes and runic power",
								["criteria"] = "runic_power > 100 & frost_runes.current = 0 & death_runes.current = 0 & unholy_runes.current >= 1",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "obliterate",
								["description"] = "Ensuring Obliterate is used with Unholy runes and Blood Plague is active",
								["criteria"] = "dot.blood_plague.ticking & unholy_runes.current = 2",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "frost_strike",
								["description"] = "Frost Strike when Killing Machine proc is active",
								["criteria"] = "buff.killing_machine.up",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "horn_of_winter",
								["description"] = "Ensuring Horn of Winter is always active",
								["criteria"] = "! buff.horn_of_winter.up",
							}, -- [20]
							{
								["enabled"] = true,
								["description"] = "Default Howling Blast",
								["action"] = "howling_blast",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "raise_dead",
								["description"] = "Raise dead conditions",
								["criteria"] = "buff.pillar_of_frost.up & buff.unholy_strength.up",
							}, -- [22]
							{
								["enabled"] = true,
								["description"] = "Default Frost Strike",
								["action"] = "frost_strike",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "Default Horn of Winter",
								["action"] = "horn_of_winter",
							}, -- [24]
							{
								["enabled"] = true,
								["action"] = "plague_strike",
								["description"] = "Using Plague Strike when certain runes are on cooldown and runic power conditions are met",
								["criteria"] = "frost_runes.current = 0 & death_runes.current = 0 & unholy_runes.current >= 1 & frost_runes.time_to_1 > 2.5 & blood_runes.time_to_1 > 2.5",
							}, -- [25]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "unholy_presence",
								["description"] = "Based on WoWSims",
								["criteria"] = "buff.unholy_presence.down",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "summon_gargoyle",
								["precombat_seconds"] = "6",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "horn_of_winter",
								["precombat_seconds"] = "1",
							}, -- [3]
						},
					},
					["version"] = 20240712,
					["warnings"] = "This profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 2 action lists.\n",
					["author"] = "Supernuss",
					["basedOn"] = "Unholy",
					["profile"] = "## Frost DeathKnight\n# Based on WoWSims\n\n## Prepull actions\nactions.precombat+=/unholy_presence,if=buff.unholy_presence.down\nactions.precombat+=/summon_gargoyle,precombat_seconds=6\nactions.precombat+=/horn_of_winter,precombat_seconds=1\n\n## Main actions\n## autocast_other_cooldowns\nactions+=/empower_rune_weapon,if=blood_runes.current=0&frost_runes.current=0&unholy_runes.current=0\nactions+=/pillar_of_frost,if=buff.unholy_strength.up\nactions+=/blood_fury,if=buff.unholy_strength.up\nactions+=/potion,if=buff.unholy_strength.up&buff.pillar_of_frost.up\nactions+=/synapse_springs,if=buff.unholy_strength.up\n## Finishers\nactions+=/frost_strike,if=target.time_to_die<=3\nactions+=/obliterate,if=target.time_to_die<=3\nactions+=/howling_blast,if=target.time_to_die<=3\n\n# Raise dead conditions -TODO: add Impatience of Youth as alternative to synapse_springs\nactions+=/raise_dead,if=buff.pillar_of_frost.up&buff.unholy_strength.up&buff.synapse_springs.up\n\n# Blood tap conditions\nactions+=/blood_tap,if=death_runes.current<=1&blood_runes.time_to_1>5.5\n\n# frost_strike under certain runic power conditions\nactions+=/frost_strike,if=runic_power.current>=105\n\n# Ensuring diseases are active\nactions+=/outbreak,if=!dot.frost_fever.ticking||!dot.blood_plague.ticking\n\n# Howling Blast with Rime proc\nactions+=/howling_blast,if=buff.freezing_fog.up\n\n# Howling Blast if Frost Fever is not active\nactions+=/howling_blast,if=!dot.frost_fever.ticking\n\n# Use DnD in AoE situation\nactions+=/death_and_decay,if=!moving&fight_remains>5&active_enemies>1\n\n# Ensuring Plague Strike is used with Unholy runes and Blood Plague is not active\nactions+=/plague_strike,if=!dot.blood_plague.ticking&unholy_runes.current=2\n\n# Using Frost Strike with certain conditions on runes and runic power\nactions+=/frost_strike,if=runic_power>100&frost_runes.current=0&death_runes.current=0&unholy_runes.current>=1\n\n# Ensuring Obliterate is used with Unholy runes and Blood Plague is active\nactions+=/obliterate,if=dot.blood_plague.ticking&unholy_runes.current=2\n\n# Frost Strike when Killing Machine proc is active\nactions+=/frost_strike,if=buff.killing_machine.up\n\n# Ensuring Horn of Winter is always active\nactions+=/horn_of_winter,if=!buff.horn_of_winter.up\n\n# Default Howling Blast\nactions+=/howling_blast\n\n# Raise dead conditions\nactions+=/raise_dead,if=buff.pillar_of_frost.up&buff.unholy_strength.up\n\n# Default Frost Strike\nactions+=/frost_strike\n\n# Default Horn of Winter\nactions+=/horn_of_winter\n\n# Using Plague Strike when certain runes are on cooldown and runic power conditions are met\nactions+=/plague_strike,if=frost_runes.current=0&death_runes.current=0&unholy_runes.current>=1&frost_runes.time_to_1>2.5&blood_runes.time_to_1>2.5",
				},
				["Feral Tank (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230613,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Tank Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/dire_bear_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1\nactions+=/run_action_list,name=bear_aoe,if=buff.dire_bear_form.up&active_enemies>4\nactions+=/run_action_list,name=bear,if=buff.dire_bear_form.up\nactions+=/dire_bear_form,if=!up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=build_lacerate,value=!debuff.lacerate.up||debuff.lacerate.stack<5\nactions.init+=/variable,name=build_lacerate_cost,op=setif,if=variable.build_lacerate,value=action.lacerate.spend*(5-debuff.lacerate.stack),value_else=0\nactions.init+=/variable,name=maintain_lacerate,value=!variable.build_lacerate&debuff.lacerate.remains<8&debuff.lacerate.remains<variable.time_to_die\nactions.init+=/variable,name=maintain_lacerate_cost,op=setif,if=variable.maintain_lacerate,value=action.lacerate.spend,value_else=0\nactions.init+=/variable,name=emergency_lacerate,value=debuff.lacerate.up&debuff.lacerate.remains<4.5&debuff.lacerate.remains<variable.time_to_die\n\nactions.bear+=/faerie_fire_feral,if=ff_procs_ooc&!buff.clearcasting.up\nactions.bear+=/enrage,use_off_gcd=1,if=time<10\nactions.bear+=/berserk\nactions.bear+=/maul,use_off_gcd=1,if=rage.current>action.maul.spend+variable.build_lacerate_cost+variable.maintain_lacerate_cost+action.mangle_bear.spend\nactions.bear+=/lacerate,if=variable.emergency_lacerate\nactions.bear+=/mangle_bear\nactions.bear+=/faerie_fire_feral\nactions.bear+=/lacerate,if=variable.build_lacerate||variable.maintain_lacerate\nactions.bear+=/swipe_bear,if=rage.current>60\n\nactions.bear_aoe+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_aoe+=/berserk\nactions.bear_aoe+=/maul,cycle_targets=1,use_off_gcd=1,if=rage.current>60\nactions.bear_aoe+=/swipe_bear,cycle_targets=1",
					["version"] = 20230613,
					["warnings"] = "Imported 5 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [3]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up & active_enemies > 4",
								["action"] = "run_action_list",
								["list_name"] = "bear_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up",
								["action"] = "run_action_list",
								["list_name"] = "bear",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [7]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.lacerate.up || debuff.lacerate.stack < 5",
								["var_name"] = "build_lacerate",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_lacerate_cost",
								["criteria"] = "variable.build_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend * ( 5 - debuff.lacerate.stack )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_lacerate & debuff.lacerate.remains < 8 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "maintain_lacerate",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "maintain_lacerate_cost",
								["criteria"] = "variable.maintain_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.lacerate.up & debuff.lacerate.remains < 4.5 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "emergency_lacerate",
							}, -- [6]
						},
						["bear"] = {
							{
								["enabled"] = true,
								["criteria"] = "ff_procs_ooc & ! buff.clearcasting.up",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "time < 10",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > action.maul.spend + variable.build_lacerate_cost + variable.maintain_lacerate_cost + action.mangle_bear.spend",
								["action"] = "maul",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_lacerate",
								["action"] = "lacerate",
							}, -- [5]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [6]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_lacerate || variable.maintain_lacerate",
								["action"] = "lacerate",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 60",
								["action"] = "swipe_bear",
							}, -- [9]
						},
						["bear_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "time < 10",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "maul",
								["cycle_targets"] = 1,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current > 60",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "swipe_bear",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "dire_bear_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Defzach",
				},
				["Demonology"] = {
					["builtIn"] = true,
					["date"] = 20240708,
					["spec"] = 9,
					["profile"] = "Smufrik demo\n# Start the fight with Felguard for the Demon Soul buff and Felstorm\nactions.precombat+=/summon_felguard,if=settings.pet_twisting&!pet.alive\nactions.precombat+=/summon_felhunter,if=!settings.pet_twisting&!pet.alive\nactions.precombat+=/fel_armor,if=buff.fel_armor.down\nactions.precombat+=/soul_link,if=!buff.soul_link.up\nactions.precombat+=/volcanic_potion\nactions.precombat+=/metamorphosis\nactions.precombat+=/demon_soul,if=pet.alive&settings.pet_twisting\nactions.precombat+=/soul_harvest,if=soul_shards<3\n\nactions+=/immolate,if=!ticking&debuff.immolate.remains<tick_time\nactions+=/corruption,if=!ticking&debuff.corruption<tick_time\nactions+=/volcanic_potion,if=buff.metamorphosis.up \nactions+=/life_tap,if=mana.pct<55 & cooldown.metamorphosis.remains<10\nactions+=/synapse_springs,if=cooldown.metamorphosis.remains>61\nactions+=/metamorphosis,use_off_gcd=1\nactions+=/soulburn,if=soul_shard>1&buff.fel_intelligence.up&cooldown.demon_soul.remains<6&settings.pet_twisting\nactions+=/summon_felguard,if=buff.fel_intelligence.up&cooldown.demon_soul.remains<6&settings.pet_twisting\nactions+=/run_action_list,name=sdr,if=buff.metamorphosis.up\nactions+=/call_action_list,name=nr,if=buff.metamorphosis.down& cooldown.metamorphosis.remains>1\nactions+=/run_action_list,name=aoe,if=active_enemies>2\n\n\nactions.sdr+=/blood_fury\nactions.sdr+=/demon_soul,if=pet.alive&!buff.fel_intelligence.up \nactions.sdr+=/immolation_aura,if=buff.metamorphosis.up\nactions.sdr+=/felstorm,if=buff.demon_soul_felguard.up\nactions.sdr+=/bane_of_doom,if=!ticking&target.time_to_die>15\nactions.sdr+=/bane_of_agony,if=!ticking&target.time_to_die<30&!debuff.bane_of_doom.up\nactions.sdr+=/summon_infernal,if=settings.inferno_enabled&target.time_to_die>45&soul_shards=3\nactions.sdr+=/hand_of_guldan,use_off_gcd=1\nactions.sdr+=/shadowflame,if=!debuff.shadowflame.up&buff.fel_spark.up\nactions.sdr+=/soulburn,if=soul_shard>1&settings.pet_twisting&!buff.fel_intelligence.up & buff.demon_soul_felguard.down\nactions.sdr+=/summon_felhunter,if=soul_shard>1&buff.soulburn.up&!buff.fel_intelligence.up&settings.pet_twisting&buff.demon_soul_felguard.down\nactions.sdr+=/summon_doomguard,if=buff.demonic_pact.up&buff.molten_core.stack>=1&cooldown.hand_of_gul_dan.remains<10\nactions.sdr+=call_action_list,name=nr\n\n\nactions+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions+=/solo_curse,if=debuff.my_curse.down\nactions.nr+=/shadow_bolt,if=!ticking&dot.shadow_and_flame.remains<cast_time\n# Use Hand of Gul'dan when available\nactions.nr+=/hand_of_guldan,use_off_gcd=1\nactions.nr+=/bane_of_doom,if=!ticking&target.time_to_die>30\nactions.nr+=/bane_of_agony,if=!ticking&target.time_to_die<30&!debuff.bane_of_doom.up\nactions.nr+=/corruption,if=!ticking\nactions.nr+=/shadowflame,if=!debuff.shadowflame.up&buff.fel_spark.up\nactions.nr+=/incinerate,if=buff.molten_core.up\nactions.nr+=/soul_fire,if=target.health.pct<25&buff.decimation.up\nactions.nr+=/shadow_bolt\n\nactions.aoe+=/metamorphosis\nactions.aoe+=/immolation_aura,if=buff.metamorphosis.up\nactions.aoe+=/shadowflame,if=target.distance<7\nactions.aoe+=/hellfire,if=spell_targets.hellfire>6\nactions.aoe+=/corruption,cycle_targets=1,if=spell_targets.corruption<6\nactions.aoe+=/immolate,cycle_targets=1,if=spell_targets.immolate<6\nactions.aoe+=/bane_of_doom,cycle_targets=1,if=spell_targets.doom<6\nactions.aoe+=/felstorm,if=pet.alive",
					["version"] = 20240708,
					["warnings"] = "This profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 5 action lists.\n",
					["lists"] = {
						["nr"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking & dot.shadow_and_flame.remains < cast_time",
								["action"] = "shadow_bolt",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "hand_of_guldan",
								["description"] = "Use Hand of Gul'dan when available",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > 30",
								["action"] = "bane_of_doom",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die < 30 & ! debuff.bane_of_doom.up",
								["action"] = "bane_of_agony",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "corruption",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.shadowflame.up & buff.fel_spark.up",
								["action"] = "shadowflame",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.molten_core.up",
								["action"] = "incinerate",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct < 25 & buff.decimation.up",
								["action"] = "soul_fire",
							}, -- [8]
							{
								["action"] = "shadow_bolt",
								["enabled"] = true,
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "settings.pet_twisting & ! pet.alive",
								["action"] = "summon_felguard",
								["description"] = "Start the fight with Felguard for the Demon Soul buff and Felstorm",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! settings.pet_twisting & ! pet.alive",
								["action"] = "summon_felhunter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.fel_armor.down",
								["action"] = "fel_armor",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.soul_link.up",
								["action"] = "soul_link",
							}, -- [4]
							{
								["action"] = "volcanic_potion",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "pet.alive & settings.pet_twisting",
								["action"] = "demon_soul",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "soul_shards < 3",
								["action"] = "soul_harvest",
							}, -- [8]
						},
						["sdr"] = {
							{
								["action"] = "blood_fury",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "pet.alive & ! buff.fel_intelligence.up",
								["action"] = "demon_soul",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.up",
								["action"] = "immolation_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.demon_soul_felguard.up",
								["action"] = "felstorm",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die > 15",
								["action"] = "bane_of_doom",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & target.time_to_die < 30 & ! debuff.bane_of_doom.up",
								["action"] = "bane_of_agony",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "settings.inferno_enabled & target.time_to_die > 45 & soul_shards = 3",
								["action"] = "summon_infernal",
							}, -- [7]
							{
								["use_off_gcd"] = 1,
								["action"] = "hand_of_guldan",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.shadowflame.up & buff.fel_spark.up",
								["action"] = "shadowflame",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard > 1 & settings.pet_twisting & ! buff.fel_intelligence.up & buff.demon_soul_felguard.down",
								["action"] = "soulburn",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard > 1 & buff.soulburn.up & ! buff.fel_intelligence.up & settings.pet_twisting & buff.demon_soul_felguard.down",
								["action"] = "summon_felhunter",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.demonic_pact.up & buff.molten_core.stack >= 1 & cooldown.hand_of_gul_dan.remains < 10",
								["action"] = "summon_doomguard",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "nr",
							}, -- [13]
						},
						["aoe"] = {
							{
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.up",
								["action"] = "immolation_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 7",
								["action"] = "shadowflame",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.hellfire > 6",
								["action"] = "hellfire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.corruption < 6",
								["action"] = "corruption",
								["cycle_targets"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.immolate < 6",
								["action"] = "immolate",
								["cycle_targets"] = 1,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "spell_targets.doom < 6",
								["action"] = "bane_of_doom",
								["cycle_targets"] = 1,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "pet.alive",
								["action"] = "felstorm",
							}, -- [8]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "immolate",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "corruption",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.metamorphosis.up",
								["action"] = "volcanic_potion",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 55 & cooldown.metamorphosis.remains < 10",
								["action"] = "life_tap",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.metamorphosis.remains > 61",
								["action"] = "synapse_springs",
							}, -- [5]
							{
								["use_off_gcd"] = 1,
								["action"] = "metamorphosis",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "soul_shard > 1 & buff.fel_intelligence.up & cooldown.demon_soul.remains < 6 & settings.pet_twisting",
								["action"] = "soulburn",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.fel_intelligence.up & cooldown.demon_soul.remains < 6 & settings.pet_twisting",
								["action"] = "summon_felguard",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.metamorphosis.up",
								["list_name"] = "sdr",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "buff.metamorphosis.down & cooldown.metamorphosis.remains > 1",
								["list_name"] = "nr",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 2",
								["list_name"] = "aoe",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "group_curse",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "solo_curse",
							}, -- [13]
						},
					},
					["author"] = "Smufrik",
				},
				["Blood (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/blood-death-knight-tank-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20230411,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "death_and_decay",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever + active_dot.blood_plague < true_active_enemies * 2 )",
								["action"] = "pestilence",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "icy_touch",
								["criteria"] = "! dot.frost_fever.ticking",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "plague_strike",
								["criteria"] = "! dot.blood_plague.ticking",
								["cycle_targets"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "health.pct > 60 & ( active_enemies > 2 || ! talent.heart_strike.enabled )",
								["action"] = "blood_boil",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies < 3",
								["action"] = "heart_strike",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20",
								["action"] = "death_coil",
							}, -- [7]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "down",
								["action"] = "horn_of_winter",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < 2",
								["action"] = "death_grip",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "health.pct <= 60",
								["action"] = "death_strike",
							}, -- [4]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [5]
							{
								["action"] = "unholy_frenzy",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.blood_plague.ticking & dot.blood_plague.refreshable || dot.frost_fever.ticking & dot.frost_fever.refreshable",
								["action"] = "pestilence",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking || frost_runes.time_to_max < gcd",
								["action"] = "icy_touch",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.time_to_max < gcd",
								["action"] = "blood_strike",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "health.current + action.death_strike.healing < health.max & dot.frost_fever.ticking & dot.blood_plague.ticking",
								["action"] = "death_strike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( glyph.blood_tap.enabled || health.pct > 60 ) & blood_runes.current = 0",
								["action"] = "blood_tap",
							}, -- [13]
							{
								["action"] = "rune_strike",
								["enabled"] = true,
							}, -- [14]
							{
								["action"] = "heart_strike",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit < 20",
								["action"] = "death_coil",
							}, -- [16]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "( blood_runes.current + frost_runes.current + unholy_runes.current ) < 2",
								["action"] = "empower_rune_weapon",
							}, -- [18]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down",
								["action"] = "frost_presence",
							}, -- [1]
						},
					},
					["version"] = 20230411,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nLine 5: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nImported 3 action lists.\n",
					["author"] = "Icy Veins",
					["profile"] = "## Blood Death Knight (Icy Veins)\n## 2023-04-11\n\nactions.precombat+=/frost_presence,if=buff.presence.down\n\nactions+=/mind_freeze\nactions+=/horn_of_winter,if=down\nactions+=/death_grip,if=time<2\nactions+=/death_strike,if=health.pct<=60\nactions+=/use_items\nactions+=/unholy_frenzy\nactions+=/run_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/pestilence,if=dot.blood_plague.ticking&dot.blood_plague.refreshable||dot.frost_fever.ticking&dot.frost_fever.refreshable\nactions+=/icy_touch,if=!dot.frost_fever.ticking||frost_runes.time_to_max<gcd\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/blood_strike,if=blood_runes.time_to_max<gcd\nactions+=/death_strike,if=health.current+action.death_strike.healing<health.max&dot.frost_fever.ticking&dot.blood_plague.ticking\nactions+=/blood_tap,if=(glyph.blood_tap.enabled||health.pct>60)&blood_runes.current=0\nactions+=/rune_strike\nactions+=/heart_strike\nactions+=/death_coil,if=runic_power.deficit<20\nactions+=/blood_strike\n## TODO: Determine Death Rune situation.\n## actions+=/icy_touch,if=???\nactions+=/empower_rune_weapon,if=(blood_runes.current+frost_runes.current+unholy_runes.current)<2\n\nactions.aoe+=/death_and_decay\nactions.aoe+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever+active_dot.blood_plague<true_active_enemies*2)\nactions.aoe+=/icy_touch,cycle_targets=1,if=!dot.frost_fever.ticking\nactions.aoe+=/plague_strike,cycle_targets=1,if=!dot.blood_plague.ticking\nactions.aoe+=/blood_boil,if=health.pct>60&(active_enemies>2||!talent.heart_strike)\nactions.aoe+=/heart_strike,if=active_enemies<3\nactions.aoe+=/death_coil,if=runic_power.deficit<20",
				},
				["Retribution"] = {
					["source"] = "SimulationCraft v432-2",
					["builtIn"] = true,
					["date"] = 20240629,
					["spec"] = 2,
					["profile"] = "## Retribution Paladin\n# Based on WoWSims\n\n\n## Precombat\nactions.precombat+=/retribution_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.retribution_aura\nactions.precombat+=/concentration_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.concentration_aura\nactions.precombat+=/crusader_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.crusader_aura\nactions.precombat+=/devotion_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.devotion_aura\nactions.precombat+=/resistance_aura,if=!buff.aura.up&settings.maintain_aura&assigned_aura.resistance_aura\nactions.precombat+=/blessing_of_kings,if=!buff.blessing.up&settings.maintain_blessing&assigned_blessing.blessing_of_kings\nactions.precombat+=/blessing_of_might,if=!buff.blessing.up&settings.maintain_blessing&assigned_blessing.blessing_of_might\nactions.precombat+=/seal_of_truth,if=buff.seal.remains<300\nactions.precombat+=/divine_plea,if=mana.percent<90\nactions.precombat+=/guardian_of_ancient_kings,if=cooldown.zealotry.remains<=10||cooldown.zealotry.remains>=time_to_die\nactions.precombat+=/judgement\n\n## Default\nactions+=/run_action_list,name=cleave,if=active_enemies>1\nactions+=/run_action_list,name=single\n\n## Single\nactions.single+=/rebuke\nactions.single+=/seal_of_truth,if=buff.seal.down||(buff.seal_of_righteousness.up&active_enemies=1)\nactions.single+=/judgement,if=!buff.judgements_of_the_pure.up\nactions.single+=/guardian_of_ancient_kings,if=cooldown.zealotry.remains<=10||cooldown.zealotry.remains>=time_to_die\n# also activate all other cooldowns if buff.zealotry.up&buff.inquisition.up\nactions.single+=/use_items,if=buff.zealotry.up&buff.inquisition.up\nactions.single+=/potion,if=buff.zealotry.up&buff.inquisition.up\nactions.single+=/avenging_wrath,if=((buff.zealotry.up&!settings.zealotry_macro)||!talent.zealotry.enabled)&buff.inquisition.up\nactions.single+=/zealotry\nactions.single+=/inquisition,if=buff.inquisition.remains<=3.5&!action.zealotry.ready&cooldown.zealotry.remains&target.time_to_die>6\nactions.single+=/synapse_springs,if=cooldown.avenging_wrath.remains>=35\nactions.single+=/word_of_glory,if=buff.selfless.down&(holy_power=3||buff.divine_purpose.up)&settings.selfless_healer&(can_spend_holy_power||!settings.zealotry_save)\nactions.single+=/templars_verdict,if=holy_power>=3||buff.divine_purpose.up&cooldown.crusader_strike.remains\nactions.single+=/crusader_strike,if=holy_power<3\nactions.single+=/judgement,if=set_bonus.tier13_2pc_melee&!buff.zealotry.up&holy_power<3\nactions.single+=/exorcism,if=(cooldown.crusader_strike.remains>=1||!buff.bloodlust.up)&buff.the_art_of_war.up\nactions.single+=/hammer_of_wrath\nactions.single+=/judgement,if=cooldown.crusader_strike.remains>=1||!buff.bloodlust.up\nactions.single+=/holy_wrath,if=cooldown.crusader_strike.remains>=1||!buff.bloodlust.up\nactions.single+=/consecration,if=(settings.ignore_consecration_movement||!moving)&settings.single_target_consecration&(cooldown.crusader_strike.remains>=1||!buff.bloodlust.up)&mana.current>=16000\nactions.single+=/divine_plea,if=mana.percent<settings.divine_plea_threshold\n\n\n## Cleave\nactions.cleave+=/rebuke\nactions.cleave+=/seal_of_righteousness,if=buff.seal_of_righteousness.down&active_enemies>=settings.seal_of_righteousness\nactions.cleave+=/judgement,if=(mana.percent<settings.mana_judgement_threshold)&buff.judgements_of_the_bold.down\nactions.cleave+=/guardian_of_ancient_kings,if=cooldown.zealotry.remains<10\nactions.cleave+=/zealotry,use_off_gcd=1,if=buff.guardian_of_ancient_kings.remains<21&(holy_power=3||buff.divine_purpose.up)&level=85\nactions.cleave+=/zealotry,use_off_gcd=1,if=(holy_power=3||buff.divine_purpose.up)&level<85\nactions.cleave+=/avenging_wrath,use_off_gcd=1,if=(buff.zealotry.up&!settings.zealotry_macro)||!talent.zealotry.enabled\nactions.cleave+=/judgement,if=mana.percent<settings.mana_judgement_threshold&buff.judgements_of_the_bold.down\nactions.cleave+=/divine_storm,if=active_enemies>=settings.divine_storm_threshold\nactions.cleave+=/inquisition,if=(buff.inquisition.down||(time_to_three_holy_power*0.66)>buff.inquisition.remains)&(holy_power=3||buff.divine_purpose.up)&(can_spend_holy_power||!settings.zealotry_save)\nactions.cleave+=/word_of_glory,if=buff.selfless.down&(holy_power=3||buff.divine_purpose.up)&settings.selfless_healer&(can_spend_holy_power||!settings.zealotry_save)\nactions.cleave+=/divine_storm,if=holy_power<3&active_enemies>=4\nactions.cleave+=/consecration,if=(settings.ignore_consecration_movement||!moving)&!buff.active_consecration.up&active_enemies>4\nactions.cleave+=/crusader_strike,if=holy_power<3&active_enemies<4\nactions.cleave+=/templars_verdict,if=(buff.divine_purpose.up||holy_power=3)&(can_spend_holy_power||!settings.zealotry_save)\nactions.cleave+=/consecration,if=(settings.ignore_consecration_movement||!moving)&!buff.active_consecration.up&active_enemies>2\nactions.cleave+=/judgement,if=buff.zealotry.down&holy_power<3\nactions.cleave+=/exorcism,if=buff.the_art_of_war.up\nactions.cleave+=/hammer_of_wrath\nactions.cleave+=/judgement,if=set_bonus.tier13_2pc_melee&buff.zealotry.up&holy_power<3\nactions.cleave+=/crusader_strike\nactions.cleave+=/holy_wrath\nactions.cleave+=/divine_plea,if=mana.percent<settings.divine_plea_threshold",
					["version"] = 20240629,
					["warnings"] = "Imported 4 action lists.\n",
					["lists"] = {
						["single"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.down || ( buff.seal_of_righteousness.up & active_enemies = 1 )",
								["action"] = "seal_of_truth",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.judgements_of_the_pure.up",
								["action"] = "judgement",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.zealotry.remains <= 10 || cooldown.zealotry.remains >= time_to_die",
								["action"] = "guardian_of_ancient_kings",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "also activate all other cooldowns if buff.zealotry.up&buff.inquisition.up",
								["criteria"] = "buff.zealotry.up & buff.inquisition.up",
								["action"] = "use_items",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.zealotry.up & buff.inquisition.up",
								["action"] = "potion",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "( ( buff.zealotry.up & ! settings.zealotry_macro ) || ! talent.zealotry.enabled ) & buff.inquisition.up",
								["action"] = "avenging_wrath",
							}, -- [7]
							{
								["action"] = "zealotry",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "buff.inquisition.remains <= 3.5 & ! action.zealotry.ready & cooldown.zealotry.remains & target.time_to_die > 6",
								["action"] = "inquisition",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.avenging_wrath.remains >= 35",
								["action"] = "synapse_springs",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.selfless.down & ( holy_power = 3 || buff.divine_purpose.up ) & settings.selfless_healer & ( can_spend_holy_power || ! settings.zealotry_save )",
								["action"] = "word_of_glory",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power >= 3 || buff.divine_purpose.up & cooldown.crusader_strike.remains",
								["action"] = "templars_verdict",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "holy_power < 3",
								["action"] = "crusader_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier13_2pc_melee & ! buff.zealotry.up & holy_power < 3",
								["action"] = "judgement",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( cooldown.crusader_strike.remains >= 1 || ! buff.bloodlust.up ) & buff.the_art_of_war.up",
								["action"] = "exorcism",
							}, -- [15]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.remains >= 1 || ! buff.bloodlust.up",
								["action"] = "judgement",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.crusader_strike.remains >= 1 || ! buff.bloodlust.up",
								["action"] = "holy_wrath",
							}, -- [18]
							{
								["enabled"] = true,
								["criteria"] = "( settings.ignore_consecration_movement || ! moving ) & settings.single_target_consecration & ( cooldown.crusader_strike.remains >= 1 || ! buff.bloodlust.up ) & mana.current >= 16000",
								["action"] = "consecration",
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [20]
						},
						["cleave"] = {
							{
								["action"] = "rebuke",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal_of_righteousness.down & active_enemies >= settings.seal_of_righteousness",
								["action"] = "seal_of_righteousness",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "( mana.percent < settings.mana_judgement_threshold ) & buff.judgements_of_the_bold.down",
								["action"] = "judgement",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.zealotry.remains < 10",
								["action"] = "guardian_of_ancient_kings",
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "buff.guardian_of_ancient_kings.remains < 21 & ( holy_power = 3 || buff.divine_purpose.up ) & level = 85",
								["action"] = "zealotry",
							}, -- [5]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "( holy_power = 3 || buff.divine_purpose.up ) & level < 85",
								["action"] = "zealotry",
							}, -- [6]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["criteria"] = "( buff.zealotry.up & ! settings.zealotry_macro ) || ! talent.zealotry.enabled",
								["action"] = "avenging_wrath",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.mana_judgement_threshold & buff.judgements_of_the_bold.down",
								["action"] = "judgement",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= settings.divine_storm_threshold",
								["action"] = "divine_storm",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "( buff.inquisition.down || ( time_to_three_holy_power * 0.66 ) > buff.inquisition.remains ) & ( holy_power = 3 || buff.divine_purpose.up ) & ( can_spend_holy_power || ! settings.zealotry_save )",
								["action"] = "inquisition",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.selfless.down & ( holy_power = 3 || buff.divine_purpose.up ) & settings.selfless_healer & ( can_spend_holy_power || ! settings.zealotry_save )",
								["action"] = "word_of_glory",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "holy_power < 3 & active_enemies >= 4",
								["action"] = "divine_storm",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "( settings.ignore_consecration_movement || ! moving ) & ! buff.active_consecration.up & active_enemies > 4",
								["action"] = "consecration",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "holy_power < 3 & active_enemies < 4",
								["action"] = "crusader_strike",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "( buff.divine_purpose.up || holy_power = 3 ) & ( can_spend_holy_power || ! settings.zealotry_save )",
								["action"] = "templars_verdict",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "( settings.ignore_consecration_movement || ! moving ) & ! buff.active_consecration.up & active_enemies > 2",
								["action"] = "consecration",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "buff.zealotry.down & holy_power < 3",
								["action"] = "judgement",
							}, -- [17]
							{
								["enabled"] = true,
								["criteria"] = "buff.the_art_of_war.up",
								["action"] = "exorcism",
							}, -- [18]
							{
								["action"] = "hammer_of_wrath",
								["enabled"] = true,
							}, -- [19]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier13_2pc_melee & buff.zealotry.up & holy_power < 3",
								["action"] = "judgement",
							}, -- [20]
							{
								["action"] = "crusader_strike",
								["enabled"] = true,
							}, -- [21]
							{
								["action"] = "holy_wrath",
								["enabled"] = true,
							}, -- [22]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < settings.divine_plea_threshold",
								["action"] = "divine_plea",
							}, -- [23]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "cleave",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "single",
							}, -- [2]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Based on WoWSims",
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.retribution_aura",
								["action"] = "retribution_aura",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.concentration_aura",
								["action"] = "concentration_aura",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.crusader_aura",
								["action"] = "crusader_aura",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.devotion_aura",
								["action"] = "devotion_aura",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.aura.up & settings.maintain_aura & assigned_aura.resistance_aura",
								["action"] = "resistance_aura",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blessing.up & settings.maintain_blessing & assigned_blessing.blessing_of_kings",
								["action"] = "blessing_of_kings",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blessing.up & settings.maintain_blessing & assigned_blessing.blessing_of_might",
								["action"] = "blessing_of_might",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.seal.remains < 300",
								["action"] = "seal_of_truth",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "mana.percent < 90",
								["action"] = "divine_plea",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.zealotry.remains <= 10 || cooldown.zealotry.remains >= time_to_die",
								["action"] = "guardian_of_ancient_kings",
							}, -- [10]
							{
								["action"] = "judgement",
								["enabled"] = true,
							}, -- [11]
						},
					},
					["basedOn"] = "Retribution (Himea Beta)",
					["author"] = "Himea",
				},
				["Unholy (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/unholy-death-knight-dps-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20220926.3,
					["spec"] = 6,
					["desc"] = "This priority is based on the Icy Veins guide.",
					["lists"] = {
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking & target.time_to_die >= 10 & fight_remains >= 10",
								["action"] = "plague_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking & target.time_to_die >= 10 & fight_remains >= 10",
								["action"] = "icy_touch",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever < active_enemies || active_dot.blood_plague < active_enemies )",
								["action"] = "pestilence",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! moving & fight_remains > 8",
								["action"] = "death_and_decay",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking || fight_remains < 8",
								["action"] = "blood_strike",
							}, -- [6]
							{
								["action"] = "scourge_strike",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current = 0",
								["action"] = "blood_tap",
							}, -- [8]
							{
								["action"] = "summon_gargoyle",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "pet.ghoul.up",
								["action"] = "ghoul_frenzy",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.deficit <= 15",
								["action"] = "death_coil",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.horn_of_winter.down",
								["action"] = "horn_of_winter",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "! buff.blood_presence.up & action.summon_gargoyle.time_since < gcd * 2 & cooldown.blood_tap.remains",
								["action"] = "blood_presence",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "cancel_buff",
								["criteria"] = "cooldown.empower_rune_weapon.ready & blood_runes.current = 0 & frost_runes.current = 0 & unholy_runes.current = 0",
								["buff_name"] = "blood_tap",
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.blood_tap.down & ( blood_runes.current + frost_runes.current + unholy_runes.current < 3 )",
								["action"] = "empower_rune_weapon",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "runic_power.current > 60",
								["action"] = "death_coil",
							}, -- [17]
							{
								["action"] = "icy_touch",
								["enabled"] = true,
							}, -- [18]
							{
								["action"] = "plague_strike",
								["enabled"] = true,
							}, -- [19]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [20]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down & cooldown.summon_gargoyle.ready",
								["action"] = "unholy_presence",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.presence.down & ! cooldown.summon_gargoyle.ready",
								["action"] = "blood_presence",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "talent.master_of_ghouls.enabled",
								["action"] = "raise_dead",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "dot.frost_fever.ticking & dot.blood_plague.ticking || target.time_to_die < 10 || fight_remains < 10",
								["var_name"] = "diseases_ok",
							}, -- [4]
						},
					},
					["version"] = 20220926.3,
					["warnings"] = "Imported 2 action lists.\n",
					["profile"] = "## Unholy Death Knight (Icy Veins)\n## 2022-09-26\n\nactions.precombat+=/unholy_presence,if=buff.presence.down&cooldown.summon_gargoyle.ready\nactions.precombat+=/blood_presence,if=buff.presence.down&!cooldown.summon_gargoyle.ready\nactions.precombat+=/raise_dead,if=talent.master_of_ghouls.enabled\nactions.precombat+=/variable,name=diseases_ok,value=dot.frost_fever.ticking&dot.blood_plague.ticking||target.time_to_die<10||fight_remains<10\n\nactions+=/mind_freeze\nactions+=/plague_strike,if=!dot.blood_plague.ticking&target.time_to_die>=10&fight_remains>=10\nactions+=/icy_touch,if=!dot.frost_fever.ticking&target.time_to_die>=10&fight_remains>=10\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever<active_enemies||active_dot.blood_plague<active_enemies)\nactions+=/death_and_decay,if=active_enemies>1&!moving&fight_remains>8\nactions+=/blood_strike,if=dot.frost_fever.ticking&dot.blood_plague.ticking||fight_remains<8\nactions+=/scourge_strike\nactions+=/blood_tap,if=blood_runes.current=0\nactions+=/summon_gargoyle\nactions+=/ghoul_frenzy,if=pet.ghoul.up\nactions+=/use_items\nactions+=/death_coil,if=runic_power.deficit<=15\nactions+=/horn_of_winter,if=buff.horn_of_winter.down\nactions+=/blood_presence,if=!buff.blood_presence.up&action.summon_gargoyle.time_since<gcd*2&cooldown.blood_tap.remains\nactions+=/cancel_buff,name=blood_tap,if=cooldown.empower_rune_weapon.ready&blood_runes.current=0&frost_runes.current=0&unholy_runes.current=0\nactions+=/empower_rune_weapon,if=buff.blood_tap.down&(blood_runes.current+frost_runes.current+unholy_runes.current<3)\nactions+=/death_coil,if=runic_power.current>60\nactions+=/icy_touch\nactions+=/plague_strike\nactions+=/blood_strike",
					["author"] = "Icy Veins",
				},
				["Feral DPS (IV)"] = {
					["builtIn"] = true,
					["date"] = 20231026.2,
					["spec"] = 11,
					["desc"] = "WotLK Feral Druid Priorities\n\nToggle advanced rotation recommendations in the class options.",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/cat_form,if=!up&!buff.dire_bear_form.up\nactions.precombat+=/potion\n\nactions+=/use_items\nactions+=/potion\nactions+=/hyperspeed_acceleration,use_off_gcd=1,if=set_bonus.tier7feral_4pc=1&(buff.tigers_fury.up||cooldown.tigers_fury.remains>=15)\nactions+=/run_action_list,name=bearweave,if=buff.dire_bear_form.up&bearweaving_enabled\nactions+=/run_action_list,name=bear_tank_aoe,if=buff.dire_bear_form.up&!bearweaving_enabled&active_enemies>4&bear_mode_tank_enabled\nactions+=/run_action_list,name=bear_tank,if=buff.dire_bear_form.up&!bearweaving_enabled&bear_mode_tank_enabled\nactions+=/run_action_list,name=cat_aoe,if=buff.cat_form.up&active_enemies>2\nactions+=/run_action_list,name=cat,if=buff.cat_form.up\nactions+=/cat_form,if=!up\n\nactions.cat+=/tigers_fury,use_off_gcd=1,if=energy.current<30-(buff.clearcasting.up&15||0)\nactions.cat+=/faerie_fire_feral,if=!glyph.omen_of_clarity.enabled&!debuff.armor_reduction.up&target.outside2\nactions.cat+=/faerie_fire_feral,if=glyph.omen_of_clarity.enabled&!buff.clearcasting.up&(target.outside2||buff.berserk.up&ff_during_berserk||!buff.berserk.up&energy.current<87)&(!rip_now||energy.current<action.rip.spend)&can_spend_ff\nactions.cat+=/berserk,if=!wait_for_tf&debuff.rip.up&!buff.clearcasting.up\nactions.cat+=/savage_roar,if=!buff.savage_roar.up\nactions.cat+=/savage_roar,if=debuff.rip.up&buff.savage_roar.up&buff.savage_roar.remains-(rip_maxremains+settings.rip_leeway)<=0&rip_maxremains+settings.min_roar_offset<=sr_new_duration&!buff.savage_roar.remains>=ttd\nactions.cat+=/rip,if=rip_now\nactions.cat+=/ferocious_bite,if=settings.ferociousbite_enabled&energy.current<67&!buff.clearcasting.up&(bite_at_end||bite_before_rip)&(!buff.berserk.up||bite_during_berserk)\nactions.cat+=/mangle_cat,if=!debuff.mangle.up&ttd>1&!wait_for_ff\nactions.cat+=/rake,if=buff.clearcasting.up&!debuff.bleed.up&ttd>9\nactions.cat+=/rake,if=!up&!buff.clearcasting.up&(should_rake||!debuff.bleed.up)&ttd>9&!wait_for_ff\nactions.cat+=/faerie_fire_feral,if=!glyph.omen_of_clarity.enabled&!debuff.armor_reduction.up&energy.current<=90\nactions.cat+=/dire_bear_form,if=should_bearweave\nactions.cat+=/gift_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<42\nactions.cat+=/shred,if=!wait_for_ff&(excess_e>=action.shred.spend||buff.clearcasting.up||buff.berserk.up||(cooldown.faerie_fire_feral.remains<=1&energy.current>77||energy.current=100))\n\nactions.cat_aoe+=/faerie_fire_feral,if=glyph.omen_of_clarity.enabled&!buff.clearcasting.up&(buff.berserk.up&ff_during_berserk||!buff.berserk.up&energy.current<87)&can_spend_ff\nactions.cat_aoe+=/tigers_fury,use_off_gcd=1,if=energy.current<30-(buff.clearcasting.up&15||0)\nactions.cat_aoe+=/berserk,if=energy.current>60&cooldown.tigers_fury.remains>=15\nactions.cat_aoe+=/savage_roar,if=!up&ttd>1+latency\nactions.cat_aoe+=/mangle_cat,if=(set_bonus.idol_of_the_corruptor=1||set_bonus.idol_of_mutilation=1)&combo_points.current=0&buff.savage_roar.remains<=1\nactions.cat_aoe+=/shred,if=set_bonus.idol_of_mutilation=1&combo_points.current=0&buff.savage_roar.remains<=1&(ttd>buff.savage_roar.remains+1+latency)\nactions.cat_aoe+=/rake,if=!set_bonus.idol_of_mutilation=1&combo_points.current=0&buff.savage_roar.remains<=1&(ttd>buff.savage_roar.remains+1+latency)\nactions.cat_aoe+=/swipe_cat,if=excess_e>=action.swipe_cat.spend||buff.clearcasting.up\nactions.cat_aoe+=/gift_of_the_wild,if=should_flowerweave&mana.pct>settings.min_weave_mana&energy.current<45\nactions.cat_aoe+=/faerie_fire_feral,if=!glyph.omen_of_clarity.enabled&!debuff.armor_reduction.up\n\nactions.bearweave+=/faerie_fire_feral,if=glyph.omen_of_clarity.enabled&!buff.clearcasting.up\nactions.bearweave+=/cat_form,if=should_cat\nactions.bearweave+=/enrage,use_off_gcd=1,if=cooldown.mangle_bear.up\nactions.bearweave+=/maul,use_off_gcd=1,if=!up&!buff.clearcasting.up&rage.current>=action.maul.spend+(cooldown.mangle_bear.up&action.mangle_bear.spend||0)\nactions.bearweave+=/mangle_bear\n\nactions.bear_tank_init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.bear_tank_init+=/variable,name=build_lacerate,value=!debuff.lacerate.up||debuff.lacerate.stack<5\nactions.bear_tank_init+=/variable,name=build_lacerate_cost,op=setif,if=variable.build_lacerate,value=action.lacerate.spend*(5-debuff.lacerate.stack),value_else=0\nactions.bear_tank_init+=/variable,name=maintain_lacerate,value=!variable.build_lacerate&debuff.lacerate.remains<8&debuff.lacerate.remains<variable.time_to_die\nactions.bear_tank_init+=/variable,name=maintain_lacerate_cost,op=setif,if=variable.maintain_lacerate,value=action.lacerate.spend,value_else=0\nactions.bear_tank_init+=/variable,name=emergency_lacerate,value=debuff.lacerate.up&debuff.lacerate.remains<4.5&debuff.lacerate.remains<variable.time_to_die\n\nactions.bear_tank+=/call_action_list,name=bear_tank_init\nactions.bear_tank+=/faerie_fire_feral,if=glyph.omen_of_clarity.enabled&!buff.clearcasting.up\nactions.bear_tank+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_tank+=/berserk\nactions.bear_tank+=/maul,use_off_gcd=1,if=rage.current>action.maul.spend+variable.build_lacerate_cost+variable.maintain_lacerate_cost+action.mangle_bear.spend\nactions.bear_tank+=/lacerate,if=variable.emergency_lacerate\nactions.bear_tank+=/mangle_bear\nactions.bear_tank+=/faerie_fire_feral\nactions.bear_tank+=/lacerate,if=variable.build_lacerate||variable.maintain_lacerate\nactions.bear_tank+=/swipe_bear,if=rage.current>60\n\nactions.bear_tank_aoe+=/enrage,use_off_gcd=1,if=time<10\nactions.bear_tank_aoe+=/berserk\nactions.bear_tank_aoe+=/maul,cycle_targets=1,use_off_gcd=1,if=rage.current>60\nactions.bear_tank_aoe+=/swipe_bear,cycle_targets=1",
					["version"] = 20231026.2,
					["warnings"] = "Imported 8 action lists.\n",
					["lists"] = {
						["bear_tank"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "bear_tank_init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "glyph.omen_of_clarity.enabled & ! buff.clearcasting.up",
								["action"] = "faerie_fire_feral",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "time < 10",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > action.maul.spend + variable.build_lacerate_cost + variable.maintain_lacerate_cost + action.mangle_bear.spend",
								["action"] = "maul",
								["use_off_gcd"] = 1,
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.emergency_lacerate",
								["action"] = "lacerate",
							}, -- [6]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [7]
							{
								["action"] = "faerie_fire_feral",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.build_lacerate || variable.maintain_lacerate",
								["action"] = "lacerate",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "rage.current > 60",
								["action"] = "swipe_bear",
							}, -- [10]
						},
						["cat"] = {
							{
								["enabled"] = true,
								["criteria"] = "energy.current < 30 - ( buff.clearcasting.up & 15 || 0 )",
								["action"] = "tigers_fury",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! glyph.omen_of_clarity.enabled & ! debuff.armor_reduction.up & target.outside2",
								["action"] = "faerie_fire_feral",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "glyph.omen_of_clarity.enabled & ! buff.clearcasting.up & ( target.outside2 || buff.berserk.up & ff_during_berserk || ! buff.berserk.up & energy.current < 87 ) & ( ! rip_now || energy.current < action.rip.spend ) & can_spend_ff",
								["action"] = "faerie_fire_feral",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! wait_for_tf & debuff.rip.up & ! buff.clearcasting.up",
								["action"] = "berserk",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! buff.savage_roar.up",
								["action"] = "savage_roar",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.rip.up & buff.savage_roar.up & buff.savage_roar.remains - ( rip_maxremains + settings.rip_leeway ) <= 0 & rip_maxremains + settings.min_roar_offset <= sr_new_duration & ! buff.savage_roar.remains >= ttd",
								["action"] = "savage_roar",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "rip_now",
								["action"] = "rip",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "settings.ferociousbite_enabled & energy.current < 67 & ! buff.clearcasting.up & ( bite_at_end || bite_before_rip ) & ( ! buff.berserk.up || bite_during_berserk )",
								["action"] = "ferocious_bite",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.mangle.up & ttd > 1 & ! wait_for_ff",
								["action"] = "mangle_cat",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.clearcasting.up & ! debuff.bleed.up & ttd > 9",
								["action"] = "rake",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.clearcasting.up & ( should_rake || ! debuff.bleed.up ) & ttd > 9 & ! wait_for_ff",
								["action"] = "rake",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "! glyph.omen_of_clarity.enabled & ! debuff.armor_reduction.up & energy.current <= 90",
								["action"] = "faerie_fire_feral",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "should_bearweave",
								["action"] = "dire_bear_form",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 42",
								["action"] = "gift_of_the_wild",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "! wait_for_ff & ( excess_e >= action.shred.spend || buff.clearcasting.up || buff.berserk.up || ( cooldown.faerie_fire_feral.remains <= 1 & energy.current > 77 || energy.current = 100 ) )",
								["action"] = "shred",
							}, -- [15]
						},
						["default"] = {
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.tier7feral_4pc = 1 & ( buff.tigers_fury.up || cooldown.tigers_fury.remains >= 15 )",
								["action"] = "hyperspeed_acceleration",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up & bearweaving_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bearweave",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up & ! bearweaving_enabled & active_enemies > 4 & bear_mode_tank_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank_aoe",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "buff.dire_bear_form.up & ! bearweaving_enabled & bear_mode_tank_enabled",
								["action"] = "run_action_list",
								["list_name"] = "bear_tank",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up & active_enemies > 2",
								["action"] = "run_action_list",
								["list_name"] = "cat_aoe",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.cat_form.up",
								["action"] = "run_action_list",
								["list_name"] = "cat",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "cat_form",
							}, -- [9]
						},
						["bearweave"] = {
							{
								["enabled"] = true,
								["criteria"] = "glyph.omen_of_clarity.enabled & ! buff.clearcasting.up",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "should_cat",
								["action"] = "cat_form",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.mangle_bear.up",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.clearcasting.up & rage.current >= action.maul.spend + ( cooldown.mangle_bear.up & action.mangle_bear.spend || 0 )",
								["action"] = "maul",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["action"] = "mangle_bear",
								["enabled"] = true,
							}, -- [5]
						},
						["cat_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "glyph.omen_of_clarity.enabled & ! buff.clearcasting.up & ( buff.berserk.up & ff_during_berserk || ! buff.berserk.up & energy.current < 87 ) & can_spend_ff",
								["action"] = "faerie_fire_feral",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "energy.current < 30 - ( buff.clearcasting.up & 15 || 0 )",
								["action"] = "tigers_fury",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "energy.current > 60 & cooldown.tigers_fury.remains >= 15",
								["action"] = "berserk",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! up & ttd > 1 + latency",
								["action"] = "savage_roar",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "( set_bonus.idol_of_the_corruptor = 1 || set_bonus.idol_of_mutilation = 1 ) & combo_points.current = 0 & buff.savage_roar.remains <= 1",
								["action"] = "mangle_cat",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "set_bonus.idol_of_mutilation = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( ttd > buff.savage_roar.remains + 1 + latency )",
								["action"] = "shred",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! set_bonus.idol_of_mutilation = 1 & combo_points.current = 0 & buff.savage_roar.remains <= 1 & ( ttd > buff.savage_roar.remains + 1 + latency )",
								["action"] = "rake",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "excess_e >= action.swipe_cat.spend || buff.clearcasting.up",
								["action"] = "swipe_cat",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "should_flowerweave & mana.pct > settings.min_weave_mana & energy.current < 45",
								["action"] = "gift_of_the_wild",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "! glyph.omen_of_clarity.enabled & ! debuff.armor_reduction.up",
								["action"] = "faerie_fire_feral",
							}, -- [10]
						},
						["bear_tank_init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.lacerate.up || debuff.lacerate.stack < 5",
								["var_name"] = "build_lacerate",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "build_lacerate_cost",
								["criteria"] = "variable.build_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend * ( 5 - debuff.lacerate.stack )",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_lacerate & debuff.lacerate.remains < 8 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "maintain_lacerate",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "setif",
								["action"] = "variable",
								["var_name"] = "maintain_lacerate_cost",
								["criteria"] = "variable.maintain_lacerate",
								["value_else"] = "0",
								["value"] = "action.lacerate.spend",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.lacerate.up & debuff.lacerate.remains < 4.5 & debuff.lacerate.remains < variable.time_to_die",
								["var_name"] = "emergency_lacerate",
							}, -- [6]
						},
						["bear_tank_aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "time < 10",
								["action"] = "enrage",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["action"] = "berserk",
								["enabled"] = true,
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "maul",
								["cycle_targets"] = 1,
								["use_off_gcd"] = 1,
								["criteria"] = "rage.current > 60",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "swipe_bear",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.dire_bear_form.up",
								["action"] = "cat_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
					},
					["basedOn"] = "Feral DPS (IV)",
					["author"] = "Defzach",
				},
				["Blood"] = {
					["source"] = "WoWSims",
					["builtIn"] = true,
					["date"] = 20240628,
					["author"] = "Supernuss",
					["desc"] = "This priority is based on the WoWSims.",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["description"] = "Death and Decay - Used on cooldown for AOE damage",
								["action"] = "death_and_decay",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "outbreak",
								["description"] = "Apply or refresh Outbreak if Blood Plague or Frost Fever are about to expire",
								["criteria"] = "debuff.blood_plague.remains <= 1 || debuff.frost_fever.remains <= 1",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "pestilence",
								["description"] = "Use Pestilence if both Frost Fever and Blood Plague are ticking, and less than true active enemies are infected",
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & ( active_dot.frost_fever + active_dot.blood_plague < active_enemies * 2 )",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "heart_strike",
								["description"] = "Default to Heart Strike for AOE damage if there are 5 or fewer enemies",
								["criteria"] = "active_enemies <= 5",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "blood_boil",
								["description"] = "Use Blood Boil if there are more than 5 active enemies or Crimson Scourge buff is up",
								["criteria"] = "active_enemies > 5 || buff.crimson_scourge.up",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "death_strike",
								["description"] = "Use Death Strike if health is at or below 50% or Blood Shield is not active",
								["criteria"] = "health.pct <= 50 || ! buff.blood_shield.up",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "icy_touch",
								["description"] = "Apply Frost Fever with Icy Touch if it is not ticking and the target will live for more than 10 seconds",
								["criteria"] = "! dot.frost_fever.ticking & target.time_to_die > 10",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "plague_strike",
								["description"] = "Apply Blood Plague with Plague Strike if it is not ticking and the target will live for more than 10 seconds",
								["criteria"] = "! dot.blood_plague.ticking & target.time_to_die > 10",
							}, -- [8]
							{
								["enabled"] = true,
								["description"] = "Default to Death Strike for healing and Blood Shield",
								["action"] = "death_strike",
							}, -- [9]
							{
								["enabled"] = true,
								["description"] = "Default to Rune Strike for generating runic power",
								["action"] = "rune_strike",
							}, -- [10]
							{
								["enabled"] = true,
								["description"] = "Use Horn of Winter on cooldown to maintain the buff",
								["action"] = "horn_of_winter",
							}, -- [11]
							{
								["enabled"] = true,
								["description"] = "Use Raise Dead on cooldown to summon a ghoul for additional DPS",
								["action"] = "raise_dead",
							}, -- [12]
						},
						["default"] = {
							{
								["enabled"] = true,
								["description"] = "Use Mind Freeze for interrupts",
								["action"] = "mind_freeze",
							}, -- [1]
							{
								["enabled"] = true,
								["description"] = "Use Blood Fury for a burst of attack power (racial ability for Orcs)",
								["action"] = "blood_fury",
							}, -- [2]
							{
								["enabled"] = true,
								["description"] = "Use Synapse Springs for an additional burst of attack power (engineering gloves enchant)",
								["action"] = "synapse_springs",
							}, -- [3]
							{
								["enabled"] = true,
								["description"] = "Use items (e.g., trinkets) on cooldown",
								["action"] = "use_items",
							}, -- [4]
							{
								["enabled"] = true,
								["description"] = "Use Dancing Rune Weapon on cooldown for increased parry chance and damage",
								["action"] = "dancing_rune_weapon",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "icebound_fortitude",
								["description"] = "Use Icebound Fortitude if health is at or below 30% for damage reduction",
								["criteria"] = "health.pct <= 30",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "outbreak",
								["description"] = "Use Outbreak if Blood Plague or Frost Fever are about to expire",
								["criteria"] = "debuff.blood_plague.remains <= 1 || debuff.frost_fever.remains <= 1",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "bone_shield",
								["description"] = "Use Bone Shield if it is not already active",
								["criteria"] = "! buff.bone_shield.up",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "vampiric_blood",
								["description"] = "Use Vampiric Blood if health is at or below 50% for increased health and healing received",
								["criteria"] = "health.pct <= 50",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "rune_tap",
								["description"] = "Use Rune Tap if Will of the Necropolis buff is active for emergency healing",
								["criteria"] = "buff.will_of_the_necropolis.up",
							}, -- [10]
							{
								["enabled"] = true,
								["action"] = "empower_rune_weapon",
								["description"] = "Use Empower Rune Weapon if health is at or below 50% and Death Strike is not ready",
								["criteria"] = "health.pct <= 50 & ! action.death_strike.ready",
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["description"] = "Switch to AOE action list if there is more than 1 active enemy",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["action"] = "death_strike",
								["description"] = "Use Death Strike if Frost or Unholy runes are full, health is at or below 50%, or Blood Shield is not active",
								["criteria"] = "frost_runes.current = 2 || unholy_runes.current = 2 || health.pct <= 50 || ! buff.blood_shield.up",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "rune_strike",
								["description"] = "Use Rune Strike if we are close to runic_power cap",
								["criteria"] = "runic_power.current >= runic_power.max - 10",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "blood_tap",
								["description"] = "Use Blood Tap if a single Frost, Unholy, or Death rune is available and Death Strike is not ready",
								["criteria"] = "( frost_runes.current = 1 || unholy_runes.current = 1 || death_runes.current = 1 ) & ! action.death_strike.ready",
							}, -- [15]
							{
								["enabled"] = true,
								["description"] = "Use Death Strike on cooldown for healing and Blood Shield",
								["action"] = "death_strike",
							}, -- [16]
							{
								["enabled"] = true,
								["action"] = "rune_tap",
								["description"] = "Use Rune Tap if health is at or below 70%, two Blood runes are available, and no Blood runes are converted to Death runes",
								["criteria"] = "health.pct <= 80 & blood_runes.current = 2 & death_runes.current_blood = 0",
							}, -- [17]
							{
								["enabled"] = true,
								["action"] = "blood_boil",
								["description"] = "Use Blood Boil if Crimson Scourge buff is up",
								["criteria"] = "buff.crimson_scourge.up",
							}, -- [18]
							{
								["enabled"] = true,
								["action"] = "death_pact",
								["description"] = "Use Death Pact if Raise Dead is about to expire or health is at or below 30% for emergency healing",
								["criteria"] = "buff.raise_dead.remains < 5 || health.pct <= 30",
							}, -- [19]
							{
								["enabled"] = true,
								["action"] = "heart_strike",
								["description"] = "Use Heart Strike if two Blood runes are available and no Blood runes are converted to Death runes",
								["criteria"] = "blood_runes.current = 2 & death_runes.current_blood = 0",
							}, -- [20]
							{
								["enabled"] = true,
								["action"] = "icy_touch",
								["description"] = "Apply Frost Fever with Icy Touch if it is not ticking",
								["criteria"] = "! dot.frost_fever.ticking",
							}, -- [21]
							{
								["enabled"] = true,
								["action"] = "plague_strike",
								["description"] = "Apply Blood Plague with Plague Strike if it is not ticking",
								["criteria"] = "! dot.blood_plague.ticking",
							}, -- [22]
							{
								["enabled"] = true,
								["description"] = "Default to Rune Strike",
								["action"] = "rune_strike",
							}, -- [23]
							{
								["enabled"] = true,
								["description"] = "Use Horn of Winter on cooldown to maintain the buff",
								["action"] = "horn_of_winter",
							}, -- [24]
							{
								["enabled"] = true,
								["description"] = "Use Raise Dead on cooldown to summon a ghoul for additional DPS",
								["action"] = "raise_dead",
							}, -- [25]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["action"] = "blood_presence",
								["description"] = "Use Blood Presence before combat to ensure the buff is active when combat starts",
								["criteria"] = "buff.blood_presence.down",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "bone_shield",
								["description"] = "Use Bone Shield 50 seconds before combat to ensure the buff is active when combat starts",
								["precombat_seconds"] = "50",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "army_of_the_dead",
								["description"] = "Use Army of the Dead 10 seconds before combat to ensure ghouls are summoned and ready when combat begins",
								["precombat_seconds"] = "10",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "raise_dead",
								["description"] = "Use Raise Dead 3 seconds before combat to summon a ghoul for additional DPS",
								["precombat_seconds"] = "3",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "horn_of_winter",
								["description"] = "Use Horn of Winter 1 second before combat to ensure the buff is active when combat starts",
								["precombat_seconds"] = "1",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "potion",
								["description"] = "Use a potion 1 second before combat for a prepot DPS boost",
								["precombat_seconds"] = "1",
							}, -- [6]
						},
					},
					["version"] = 20240628,
					["warnings"] = "Imported 3 action lists.\n",
					["profile"] = "## Blood DeathKnight\n# Based on WoWSims\n\n# Use Blood Presence before combat to ensure the buff is active when combat starts\nactions.precombat+=/blood_presence,if=buff.blood_presence.down\n\n# Use Bone Shield 50 seconds before combat to ensure the buff is active when combat starts\nactions.precombat+=/bone_shield,precombat_seconds=50\n\n# Use Army of the Dead 10 seconds before combat to ensure ghouls are summoned and ready when combat begins\nactions.precombat+=/army_of_the_dead,precombat_seconds=10\n\n# Use Raise Dead 3 seconds before combat to summon a ghoul for additional DPS\nactions.precombat+=/raise_dead,precombat_seconds=3\n\n# Use Horn of Winter 1 second before combat to ensure the buff is active when combat starts\nactions.precombat+=/horn_of_winter,precombat_seconds=1\n\n# Use a potion 1 second before combat for a prepot DPS boost\nactions.precombat+=/potion,precombat_seconds=1\n\n\n## Default\n# Use Mind Freeze for interrupts\nactions+=/mind_freeze\n\n# Use Blood Fury for a burst of attack power (racial ability for Orcs)\nactions+=/blood_fury\n\n# Use Synapse Springs for an additional burst of attack power (engineering gloves enchant)\nactions+=/synapse_springs\n\n# Use items (e.g., trinkets) on cooldown\nactions+=/use_items\n\n# Use Dancing Rune Weapon on cooldown for increased parry chance and damage\nactions+=/dancing_rune_weapon\n\n# Use Icebound Fortitude if health is at or below 30% for damage reduction\nactions+=/icebound_fortitude,if=health.pct<=30\n\n# Use Outbreak if Blood Plague or Frost Fever are about to expire\nactions+=/outbreak,if=debuff.blood_plague.remains<=1||debuff.frost_fever.remains<=1\n\n# Use Bone Shield if it is not already active\nactions+=/bone_shield,if=!buff.bone_shield.up\n\n# Use Vampiric Blood if health is at or below 50% for increased health and healing received\nactions+=/vampiric_blood,if=health.pct<=50\n\n# Use Rune Tap if Will of the Necropolis buff is active for emergency healing\nactions+=/rune_tap,if=buff.will_of_the_necropolis.up\n\n# Use Empower Rune Weapon if health is at or below 50% and Death Strike is not ready\nactions+=/empower_rune_weapon,if=health.pct<=50&!action.death_strike.ready\n\n# Switch to AOE action list if there is more than 1 active enemy\nactions+=/run_action_list,name=aoe,if=active_enemies>1\n\n# Use Death Strike if Frost or Unholy runes are full, health is at or below 50%, or Blood Shield is not active\nactions+=/death_strike,if=frost_runes.current=2||unholy_runes.current=2||health.pct<=50||!buff.blood_shield.up\n\n# Use Rune Strike if we are close to runic_power cap\nactions+=/rune_strike,if=runic_power.current>=runic_power.max-10\n\n# Use Blood Tap if a single Frost, Unholy, or Death rune is available and Death Strike is not ready\nactions+=/blood_tap,if=(frost_runes.current=1||unholy_runes.current=1||death_runes.current=1)&!action.death_strike.ready\n\n# Use Death Strike on cooldown for healing and Blood Shield\nactions+=/death_strike\n\n# Use Rune Tap if health is at or below 70%, two Blood runes are available, and no Blood runes are converted to Death runes\nactions+=/rune_tap,if=health.pct<=80&blood_runes.current=2&death_runes.current_blood=0\n\n# Use Blood Boil if Crimson Scourge buff is up\nactions+=/blood_boil,if=buff.crimson_scourge.up\n\n# Use Death Pact if Raise Dead is about to expire or health is at or below 30% for emergency healing\nactions+=/death_pact,if=buff.raise_dead.remains<5||health.pct<=30\n\n# Use Heart Strike if two Blood runes are available and no Blood runes are converted to Death runes\nactions+=/heart_strike,if=blood_runes.current=2&death_runes.current_blood=0\n\n# Apply Frost Fever with Icy Touch if it is not ticking\nactions+=/icy_touch,if=!dot.frost_fever.ticking\n\n# Apply Blood Plague with Plague Strike if it is not ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\n\n# Default to Rune Strike\nactions+=/rune_strike\n\n# Use Horn of Winter on cooldown to maintain the buff\nactions+=/horn_of_winter\n\n# Use Raise Dead on cooldown to summon a ghoul for additional DPS\nactions+=/raise_dead\n\n\n## AOE\n# Death and Decay - Used on cooldown for AOE damage\nactions.aoe+=/death_and_decay\n\n# Apply or refresh Outbreak if Blood Plague or Frost Fever are about to expire\nactions.aoe+=/outbreak,if=debuff.blood_plague.remains<=1||debuff.frost_fever.remains<=1\n\n# Use Pestilence if both Frost Fever and Blood Plague are ticking, and less than true active enemies are infected\nactions.aoe+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&(active_dot.frost_fever+active_dot.blood_plague<active_enemies*2)\n\n# Default to Heart Strike for AOE damage if there are 5 or fewer enemies\nactions.aoe+=/heart_strike,if=active_enemies<=5\n\n# Use Blood Boil if there are more than 5 active enemies or Crimson Scourge buff is up\nactions.aoe+=/blood_boil,if=active_enemies>5||buff.crimson_scourge.up\n\n# Use Death Strike if health is at or below 50% or Blood Shield is not active\nactions.aoe+=/death_strike,if=health.pct<=50||!buff.blood_shield.up\n\n# Apply Frost Fever with Icy Touch if it is not ticking and the target will live for more than 10 seconds\nactions.aoe+=/icy_touch,if=!dot.frost_fever.ticking&target.time_to_die>10\n\n# Apply Blood Plague with Plague Strike if it is not ticking and the target will live for more than 10 seconds\nactions.aoe+=/plague_strike,if=!dot.blood_plague.ticking&target.time_to_die>10\n\n# Default to Death Strike for healing and Blood Shield\nactions.aoe+=/death_strike\n\n# Default to Rune Strike for generating runic power\nactions.aoe+=/rune_strike\n\n# Use Horn of Winter on cooldown to maintain the buff\nactions.aoe+=/horn_of_winter\n\n# Use Raise Dead on cooldown to summon a ghoul for additional DPS\nactions.aoe+=/raise_dead",
					["basedOn"] = "Blood (Beta)",
					["spec"] = 6,
				},
				["Frost DK (IV)"] = {
					["source"] = "https://www.icy-veins.com/wotlk-classic/frost-death-knight-dps-pve-rotation-cooldowns-abilities",
					["builtIn"] = true,
					["date"] = 20221001,
					["spec"] = 6,
					["desc"] = "Frost DK priority based on Icy Veins' guide.",
					["profile"] = "## Frost Death Knight (Icy Veins)\n## 2022-10-01\n\nactions.precombat+=/blood_presence\nactions.precombat+=/horn_of_winter,if=buff.horn_of_winter.down\n\nactions+=/mind_freeze\nactions+=/icy_touch,if=!dot.frost_fever.ticking\nactions+=/howling_blast,if=glyph.howling_blast.enabled&!dot.frost_fever.ticking\nactions+=/plague_strike,if=!dot.blood_plague.ticking\nactions+=/pestilence,if=dot.frost_fever.ticking&dot.blood_plague.ticking&active_dot.frost_fever+active_dot.blood_plague<2*true_active_enemies\nactions+=/unbreakable_armor\nactions+=/blood_tap,if=blood_runes.current<2\nactions+=/obliterate\nactions+=/pestilence,if=glyph.disease.enabled&dot.frost_fever.ticking&dot.blood_plague.ticking&(dot.frost_fever.refreshable||dot.blood_plague.refreshable)\nactions+=/empower_rune_weapon,if=blood_runes.current+frost_runes.current+unholy_runes.current<3\nactions+=/use_items\nactions+=/call_action_list,name=aoe,strict=1,if=active_enemies>1\nactions+=/frost_strike,if=buff.killing_machine.up\nactions+=/howling_blast,if=buff.freezing_fog.up\nactions+=/blood_strike\nactions+=/frost_strike\n\nactions.aoe+=/howling_blast\nactions.aoe+=/death_and_decay,if=!moving&fight_remains>8",
					["version"] = 20221001,
					["warnings"] = "Imported 3 action lists.\n",
					["lists"] = {
						["aoe"] = {
							{
								["action"] = "howling_blast",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! moving & fight_remains > 8",
								["action"] = "death_and_decay",
							}, -- [2]
						},
						["default"] = {
							{
								["action"] = "mind_freeze",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! dot.frost_fever.ticking",
								["action"] = "icy_touch",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "glyph.howling_blast.enabled & ! dot.frost_fever.ticking",
								["action"] = "howling_blast",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! dot.blood_plague.ticking",
								["action"] = "plague_strike",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "dot.frost_fever.ticking & dot.blood_plague.ticking & active_dot.frost_fever + active_dot.blood_plague < 2 * true_active_enemies",
								["action"] = "pestilence",
							}, -- [5]
							{
								["action"] = "unbreakable_armor",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current < 2",
								["action"] = "blood_tap",
							}, -- [7]
							{
								["action"] = "obliterate",
								["enabled"] = true,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "glyph.disease.enabled & dot.frost_fever.ticking & dot.blood_plague.ticking & ( dot.frost_fever.refreshable || dot.blood_plague.refreshable )",
								["action"] = "pestilence",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "blood_runes.current + frost_runes.current + unholy_runes.current < 3",
								["action"] = "empower_rune_weapon",
							}, -- [10]
							{
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["strict"] = 1,
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "buff.killing_machine.up",
								["action"] = "frost_strike",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "buff.freezing_fog.up",
								["action"] = "howling_blast",
							}, -- [14]
							{
								["action"] = "blood_strike",
								["enabled"] = true,
							}, -- [15]
							{
								["action"] = "frost_strike",
								["enabled"] = true,
							}, -- [16]
						},
						["precombat"] = {
							{
								["action"] = "blood_presence",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.horn_of_winter.down",
								["action"] = "horn_of_winter",
							}, -- [2]
						},
					},
					["author"] = "Icy-Veins",
				},
				["Destruction"] = {
					["builtIn"] = true,
					["date"] = 20240708,
					["spec"] = 9,
					["desc"] = "Destruction warlock priority for Hekili",
					["lists"] = {
						["life"] = {
							{
								["action"] = "death_coil",
								["enabled"] = true,
							}, -- [1]
							{
								["action"] = "drain_life",
								["enabled"] = true,
							}, -- [2]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies < 2",
								["list_name"] = "st",
							}, -- [1]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "active_enemies > 1",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "health.pct < 25",
								["list_name"] = "life",
							}, -- [3]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.armor.down || buff.armor.remains < 180",
								["action"] = "fel_armor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! pet.active",
								["action"] = "summon_imp",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & target.distance < 10",
								["action"] = "shadowflame",
								["cycle_targets"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3 & ! ticking",
								["action"] = "seed_of_corruption",
								["cycle_targets"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! ticking",
								["action"] = "immolate",
								["cycle_targets"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "corruption",
								["line_cd"] = "6",
								["criteria"] = "moving",
								["cycle_targets"] = 1,
							}, -- [4]
						},
						["st"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "group_curse",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & dot.immolate.remains < tick_time",
								["action"] = "immolate",
							}, -- [2]
							{
								["action"] = "conflagrate",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "solo_curse",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "glyph.life_tap.enabled & buff.life_tap.down",
								["action"] = "life_tap",
							}, -- [5]
							{
								["action"] = "chaos_bolt",
								["enabled"] = true,
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "! ticking & dot.corruption.remains < tick_time",
								["action"] = "corruption",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 60 & mana.pct > 20 & setting.inferno_enabled || target.health.pct < 40 & setting.inferno_enabled",
								["action"] = "inferno",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "moving & mana.pct < 80 || mana.pct < 10",
								["action"] = "life_tap",
							}, -- [9]
							{
								["action"] = "incinerate",
								["enabled"] = true,
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die > 60 & debuff.my_curse.down",
								["action"] = "bane_of_doom",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die < 60 & ! debuff.curse_of_doom.remains > tick_time",
								["action"] = "bane_of_agony",
							}, -- [12]
						},
					},
					["version"] = 20240708,
					["warnings"] = "WARNING:  The import for 'st' required some automated changes.\nLine 8: Unsupported action 'inferno'.\n\nThis profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 5 action lists.\n",
					["profile"] = "actions.precombat+=/fel_armor,if=buff.armor.down||buff.armor.remains<180\nactions.precombat+=/summon_imp,if=!pet.active\nactions.precombat+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.precombat+=/volcanic_potion\n    \nactions+=/run_action_list,name=st,if=active_enemies<2\nactions+=/run_action_list,name=aoe,if=active_enemies>1\nactions+=/run_action_list,name=life,if=health.pct<25    \n    \n    \nactions.st+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions.st+=/immolate,if=!ticking&dot.immolate.remains<tick_time\nactions.st+=/conflagrate\nactions.st+=/solo_curse,if=debuff.my_curse.down\nactions.st+=/life_tap,if=glyph.life_tap.enabled&buff.life_tap.down\nactions.st+=/chaos_bolt\nactions.st+=/corruption,if=!ticking&dot.corruption.remains<tick_time\nactions.st+=/inferno,if=target.time_to_die<=60&mana.pct>20&setting.inferno_enabled||target.health.pct<40&setting.inferno_enabled\nactions.st+=/life_tap,if=moving&mana.pct<80||mana.pct<10    \nactions.st+=/incinerate\nactions.st+=/curse_of_doom,if=target.time_to_die>60&debuff.my_curse.down\nactions.st+=/curse_of_agony,if=target.time_to_die<60&!debuff.curse_of_doom.remains>tick_time\n\nactions.aoe+=/shadowflame,cycle_targets=1,if=active_enemies>3&target.distance<10\nactions.aoe+=/seed_of_corruption,cycle_targets=1,if=active_enemies>3&!ticking\nactions.aoe+=/immolate,cycle_targets=1,if=!ticking\nactions.aoe+=/corruption,line_cd=6,cycle_targets=1,if=moving\n\nactions.life+=/death_coil\nactions.life+=/drain_life",
					["author"] = "Smufrik",
				},
				["Fury"] = {
					["builtIn"] = true,
					["date"] = 20230416,
					["spec"] = 1,
					["desc"] = "Fury Warrior priority for Hekili",
					["profile"] = "actions.precombat+=/berserker_stance,if=buff.stance.down\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\n\nactions+=/call_action_list,name=init\nactions+=/sunder_armor,if=variable.should_sunder&variable.emergency_sunder\nactions+=/pummel\nactions+=/run_action_list,name=berserker_stance,if=buff.berserker_stance.up\nactions+=/run_action_list,name=battle_stance,if=buff.battle_stance.up\nactions+=/run_action_list,name=defensive_stance,if=buff.defensive_stance.up\n\nactions.init+=/variable,name=time_to_die,value=(debuff.training_dummy.up&300)||target.time_to_die\nactions.init+=/variable,name=execute_phase,value=target.health.pct<20\nactions.init+=/variable,name=should_slam_over_execute,value=!variable.execute_phase||settings.execute_slam_prio\nactions.init+=/variable,name=should_bloodthirst,value=!variable.execute_phase||settings.execute_bloodthirst_enabled\nactions.init+=/variable,name=should_whirlwind,value=!variable.execute_phase||settings.execute_whirlwind_enabled\nactions.init+=/variable,name=should_sunder,value=settings.debuff_sunder_enabled&variable.time_to_die>((5-debuff.sunder_armor.stack)*(1.5+latency))+3\nactions.init+=/variable,name=build_sunder,value=!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<5)\nactions.init+=/variable,name=maintain_sunder,value=!variable.build_sunder&debuff.sunder_armor.stack=5&debuff.sunder_armor.remains<7&cooldown.bloodthirst.remains&cooldown.whirlwind.remains&!buff.bloodsurge.up\nactions.init+=/variable,name=emergency_sunder,value=debuff.sunder_armor.up&debuff.sunder_armor.remains<1.5\nactions.init+=/variable,name=should_weave,value=cooldown.bloodthirst.remains>=settings.weave_cooldown_threshold&cooldown.whirlwind.remains>=settings.weave_cooldown_threshold&cooldown.recklessness.remains>1.5&cooldown.death_wish.remains>1.5&!buff.bloodsurge.up&!buff.recklessness.up&!buff.death_wish.up&rage.current<=weave_rage_threshold&target.health.pct>=settings.weave_health_threshold\nactions.init+=/variable,name=should_rend,value=variable.should_weave&rage.current>=10&debuff.rend.remains<=settings.rend_refresh_time\nactions.init+=/variable,name=should_overpower,value=variable.should_weave&rage.current>=20&(buff.overpower_ready.up||buff.taste_for_blood.up)\nactions.init+=/variable,name=weave_now,value=settings.weaving_enabled&(variable.should_rend||variable.should_overpower)\n\nactions.berserker_stance+=/bloodrage,use_off_gcd=1,if=rage.deficit>20\nactions.berserker_stance+=/heroic_strike,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies=1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/cleave,use_off_gcd=1,if=rage.current>=settings.queueing_threshold&active_enemies>1&!buff.recklessness.up&(!variable.execute_phase||settings.execute_queueing_enabled)\nactions.berserker_stance+=/sunder_armor,if=variable.should_sunder&(variable.build_sunder||variable.maintain_sunder)\nactions.berserker_stance+=/death_wish,if=debuff.major_armor_reduction.up&!debuff.sunder_armor.up||debuff.sunder_armor.stack=5\nactions.berserker_stance+=/use_items,use_off_gcd=1\nactions.berserker_stance+=/hyperspeed_acceleration,use_off_gcd=1\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&main_gcd_spell_slam&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst&main_gcd_spell_bt\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind&main_gcd_spell_ww\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up&variable.should_slam_over_execute\nactions.berserker_stance+=/bloodthirst,if=variable.should_bloodthirst\nactions.berserker_stance+=/whirlwind,if=variable.should_whirlwind\nactions.berserker_stance+=/recklessness,if=(buff.death_wish.up||debuff.shattering_throw.up)\nactions.berserker_stance+=/execute\nactions.berserker_stance+=/slam,if=buff.bloodsurge.up\nactions.berserker_stance+=/demoralizing_shout,if=settings.debuff_demoshout_enabled&!debuff.demoralizing_shout.up\nactions.berserker_stance+=/battle_stance,use_off_gcd=1,if=variable.weave_now\n\nactions.battle_stance+=/shattering_throw,if=buff.bloodlust.up&debuff.shattering_throw.down\nactions.battle_stance+=/berserker_stance,use_off_gcd=1,if=(cooldown.bloodthirst.up||cooldown.whirlwind.up||rage.current<10)&(debuff.shattering_throw.up||!buff.bloodlust.up)\nactions.battle_stance+=/rend,if=!up||debuff.rend.remains<=settings.rend_refresh_time\nactions.battle_stance+=/overpower,if=talent.improved_overpower.rank>0\n\nactions.defensive_stance+=/berserker_stance,use_off_gcd=1",
					["version"] = 20230416,
					["warnings"] = "Imported 6 action lists.\n",
					["author"] = "Defox",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & variable.emergency_sunder",
								["action"] = "sunder_armor",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.berserker_stance.up",
								["list_name"] = "berserker_stance",
							}, -- [4]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.battle_stance.up",
								["list_name"] = "battle_stance",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["criteria"] = "buff.defensive_stance.up",
								["list_name"] = "defensive_stance",
							}, -- [6]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.stance.down",
								["action"] = "berserker_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
						},
						["defensive_stance"] = {
							{
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["enabled"] = true,
							}, -- [1]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodlust.up & debuff.shattering_throw.down",
								["action"] = "shattering_throw",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["criteria"] = "( cooldown.bloodthirst.up || cooldown.whirlwind.up || rage.current < 10 ) & ( debuff.shattering_throw.up || ! buff.bloodlust.up )",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up || debuff.rend.remains <= settings.rend_refresh_time",
								["action"] = "rend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "talent.improved_overpower.rank > 0",
								["action"] = "overpower",
							}, -- [4]
						},
						["berserker_stance"] = {
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "bloodrage",
								["criteria"] = "rage.deficit > 20",
							}, -- [1]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "heroic_strike",
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies = 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
							}, -- [2]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "cleave",
								["criteria"] = "rage.current >= settings.queueing_threshold & active_enemies > 1 & ! buff.recklessness.up & ( ! variable.execute_phase || settings.execute_queueing_enabled )",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_sunder & ( variable.build_sunder || variable.maintain_sunder )",
								["action"] = "sunder_armor",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.major_armor_reduction.up & ! debuff.sunder_armor.up || debuff.sunder_armor.stack = 5",
								["action"] = "death_wish",
							}, -- [5]
							{
								["use_off_gcd"] = 1,
								["action"] = "use_items",
								["enabled"] = true,
							}, -- [6]
							{
								["use_off_gcd"] = 1,
								["action"] = "hyperspeed_acceleration",
								["enabled"] = true,
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & main_gcd_spell_slam & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst & main_gcd_spell_bt",
								["action"] = "bloodthirst",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind & main_gcd_spell_ww",
								["action"] = "whirlwind",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up & variable.should_slam_over_execute",
								["action"] = "slam",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_bloodthirst",
								["action"] = "bloodthirst",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "variable.should_whirlwind",
								["action"] = "whirlwind",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "( buff.death_wish.up || debuff.shattering_throw.up )",
								["action"] = "recklessness",
							}, -- [14]
							{
								["action"] = "execute",
								["enabled"] = true,
							}, -- [15]
							{
								["enabled"] = true,
								["criteria"] = "buff.bloodsurge.up",
								["action"] = "slam",
							}, -- [16]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_demoshout_enabled & ! debuff.demoralizing_shout.up",
								["action"] = "demoralizing_shout",
							}, -- [17]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "battle_stance",
								["criteria"] = "variable.weave_now",
							}, -- [18]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "( debuff.training_dummy.up & 300 ) || target.time_to_die",
								["var_name"] = "time_to_die",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "target.health.pct < 20",
								["var_name"] = "execute_phase",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_slam_prio",
								["var_name"] = "should_slam_over_execute",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_bloodthirst_enabled",
								["var_name"] = "should_bloodthirst",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.execute_phase || settings.execute_whirlwind_enabled",
								["var_name"] = "should_whirlwind",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.debuff_sunder_enabled & variable.time_to_die > ( ( 5 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3",
								["var_name"] = "should_sunder",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 5 )",
								["var_name"] = "build_sunder",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.build_sunder & debuff.sunder_armor.stack = 5 & debuff.sunder_armor.remains < 7 & cooldown.bloodthirst.remains & cooldown.whirlwind.remains & ! buff.bloodsurge.up",
								["var_name"] = "maintain_sunder",
							}, -- [8]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "debuff.sunder_armor.up & debuff.sunder_armor.remains < 1.5",
								["var_name"] = "emergency_sunder",
							}, -- [9]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "cooldown.bloodthirst.remains >= settings.weave_cooldown_threshold & cooldown.whirlwind.remains >= settings.weave_cooldown_threshold & cooldown.recklessness.remains > 1.5 & cooldown.death_wish.remains > 1.5 & ! buff.bloodsurge.up & ! buff.recklessness.up & ! buff.death_wish.up & rage.current <= weave_rage_threshold & target.health.pct >= settings.weave_health_threshold",
								["var_name"] = "should_weave",
							}, -- [10]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 10 & debuff.rend.remains <= settings.rend_refresh_time",
								["var_name"] = "should_rend",
							}, -- [11]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.should_weave & rage.current >= 20 & ( buff.overpower_ready.up || buff.taste_for_blood.up )",
								["var_name"] = "should_overpower",
							}, -- [12]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "settings.weaving_enabled & ( variable.should_rend || variable.should_overpower )",
								["var_name"] = "weave_now",
							}, -- [13]
						},
					},
				},
				["Balance (IV)"] = {
					["builtIn"] = true,
					["date"] = 20230228,
					["spec"] = 11,
					["desc"] = "Balance Druid priority for Hekili",
					["profile"] = "actions.precombat+=/mark_of_the_wild,if=!up&!buff.gift_of_the_wild.up\nactions.precombat+=/thorns,if=!up\nactions.precombat+=/moonkin_form,if=!up\nactions.precombat+=/potion\n\nactions+=/call_action_list,name=init\nactions+=/run_action_list,name=aoe,if=active_enemies>3\nactions+=/run_action_list,name=spam,if=variable.spam_now\nactions+=/run_action_list,name=fish\n\nactions.init+=/variable,name=lunar_spam_now,value=buff.eclipse_lunar.up\nactions.init+=/variable,name=solar_spam_now,value=buff.eclipse_solar.up\nactions.init+=/variable,name=spam_now,value=variable.lunar_spam_now||variable.solar_spam_now\nactions.init+=/variable,name=fish_now,value=!variable.lunar_spam_now&!variable.solar_spam_now\nactions.init+=/variable,name=lunar_can_proc,value=buff.eclipse_lunar.last_applied=0||query_time-buff.eclipse_lunar.last_applied>=30\nactions.init+=/variable,name=solar_can_proc,value=buff.eclipse_solar.last_applied=0||query_time-buff.eclipse_solar.last_applied>=30\nactions.init+=/variable,name=lunar_fish_now,value=variable.fish_now&variable.lunar_can_proc\nactions.init+=/variable,name=solar_fish_now,value=variable.fish_now&(variable.solar_can_proc||!variable.lunar_can_proc)\n\nactions.fish+=/starfire,if=buff.elunes_wrath.up&(!variable.lunar_fish_now||buff.elunes_wrath.remains<action.starfire.gcd||moving)\nactions.fish+=/moonfire,if=!debuff.moonfire.up&moving\nactions.fish+=/force_of_nature\nactions.fish+=/starfall\nactions.fish+=/faerie_fire,if=!up&(talent.improved_faerie_fire.enabled||group_members>=5||moving)\nactions.fish+=/insect_swarm,if=!debuff.insect_swarm.up\nactions.fish+=/typhoon,if=moving&glyph.typhoon.enabled\nactions.fish+=/moonfire,if=!debuff.moonfire.up&variable.lunar_fish_now&debuff.moonfire.remains<3\nactions.fish+=/wrath,if=variable.lunar_fish_now\nactions.fish+=/starfire,if=variable.solar_fish_now\n\nactions.spam+=/hyperspeed_acceleration,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/potion,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/use_items,use_off_gcd=1,if=buff.eclipse_lunar.up&buff.eclipse_lunar.remains>settings.lunar_cooldown_leeway\nactions.spam+=/starfire,if=buff.elunes_wrath.up\nactions.spam+=/insect_swarm,if=!debuff.insect_swarm.up&(!buff.eclipse_lunar.up||buff.eclipse_lunar.remains>7)\nactions.spam+=/wrath,if=variable.solar_spam_now\nactions.spam+=/starfire,if=variable.lunar_spam_now\n\nactions.aoe+=/typhoon,if=glyph.typhoon.enabled\nactions.aoe+=/starfall\nactions.aoe+=/hurricane",
					["version"] = 20230228,
					["warnings"] = "Imported 6 action lists.\n",
					["lists"] = {
						["fish"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up & ( ! variable.lunar_fish_now || buff.elunes_wrath.remains < action.starfire.gcd || moving )",
								["action"] = "starfire",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & moving",
								["action"] = "moonfire",
							}, -- [2]
							{
								["action"] = "force_of_nature",
								["enabled"] = true,
							}, -- [3]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! up & ( talent.improved_faerie_fire.enabled || group_members >= 5 || moving )",
								["action"] = "faerie_fire",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up",
								["action"] = "insect_swarm",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "moving & glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.moonfire.up & variable.lunar_fish_now & debuff.moonfire.remains < 3",
								["action"] = "moonfire",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_fish_now",
								["action"] = "wrath",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_fish_now",
								["action"] = "starfire",
							}, -- [10]
						},
						["default"] = {
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["list_name"] = "init",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 3",
								["action"] = "run_action_list",
								["list_name"] = "aoe",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "variable.spam_now",
								["action"] = "run_action_list",
								["list_name"] = "spam",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "fish",
							}, -- [4]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["criteria"] = "! up & ! buff.gift_of_the_wild.up",
								["action"] = "mark_of_the_wild",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "thorns",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "moonkin_form",
							}, -- [3]
							{
								["action"] = "potion",
								["enabled"] = true,
							}, -- [4]
						},
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "glyph.typhoon.enabled",
								["action"] = "typhoon",
							}, -- [1]
							{
								["action"] = "starfall",
								["enabled"] = true,
							}, -- [2]
							{
								["action"] = "hurricane",
								["enabled"] = true,
							}, -- [3]
						},
						["spam"] = {
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["action"] = "hyperspeed_acceleration",
								["use_off_gcd"] = 1,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["action"] = "potion",
								["use_off_gcd"] = 1,
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "buff.eclipse_lunar.up & buff.eclipse_lunar.remains > settings.lunar_cooldown_leeway",
								["action"] = "use_items",
								["use_off_gcd"] = 1,
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "buff.elunes_wrath.up",
								["action"] = "starfire",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.insect_swarm.up & ( ! buff.eclipse_lunar.up || buff.eclipse_lunar.remains > 7 )",
								["action"] = "insect_swarm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "variable.solar_spam_now",
								["action"] = "wrath",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "variable.lunar_spam_now",
								["action"] = "starfire",
							}, -- [7]
						},
						["init"] = {
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.up",
								["var_name"] = "lunar_spam_now",
							}, -- [1]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.up",
								["var_name"] = "solar_spam_now",
							}, -- [2]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.lunar_spam_now || variable.solar_spam_now",
								["var_name"] = "spam_now",
							}, -- [3]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "! variable.lunar_spam_now & ! variable.solar_spam_now",
								["var_name"] = "fish_now",
							}, -- [4]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_lunar.last_applied = 0 || query_time - buff.eclipse_lunar.last_applied >= 30",
								["var_name"] = "lunar_can_proc",
							}, -- [5]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "buff.eclipse_solar.last_applied = 0 || query_time - buff.eclipse_solar.last_applied >= 30",
								["var_name"] = "solar_can_proc",
							}, -- [6]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & variable.lunar_can_proc",
								["var_name"] = "lunar_fish_now",
							}, -- [7]
							{
								["enabled"] = true,
								["op"] = "set",
								["action"] = "variable",
								["value"] = "variable.fish_now & ( variable.solar_can_proc || ! variable.lunar_can_proc )",
								["var_name"] = "solar_fish_now",
							}, -- [8]
						},
					},
					["author"] = "Defzach",
				},
				["Affliction "] = {
					["builtIn"] = true,
					["date"] = 20240708,
					["spec"] = 9,
					["profile"] = "# Opener\nactions.precombat+=/volcanic_potion\nactions.precombat+=/fel_armor,if=buff.armor.down\nactions.precombat+=/summon_felhunter,if=!pet.alive\nactions.precombat+=/soul_harvest,if=soul_shards<3\nactions+=/shadow_bolt,if=debuff.shadow_embrace.down & target.health.pct > 25\nactions+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions+=/solo_curse,if=debuff.my_curse.down\nactions+=/haunt,use_off_gcd=1,if=!target.debuff.haunt.up||dot.haunt.remains<cast_time+latency+1\nactions+=/demon_soul,if=pet.alive\nactions+=/unstable_affliction,if=debuff.unstable_affliction.down\nactions+=/run_action_list,name=st\nactions+=/call_action_list,name=aoe,if=active_enemies>1\n\n# Single Target Rotation\nactions.st+=/summon_felhunter,if=!pet.alive\nactions.st+=/group_curse,if=debuff.my_curse.down&curse_grouped\nactions.st+=/solo_curse,if=debuff.my_curse.down\nactions.st+=/corruption,if=debuff.corruption.remains<tick_time\nactions+=/haunt,use_off_gcd=1,if=!target.debuff.haunt.up||dot.haunt.remains<cast_time+latency+3\nactions.st+=/bane,if=debuff.my_bane.remains<15\nactions.st+=/unstable_affliction,if=target.debuff.unstable_affliction.remains<tick_time&target.health.pct>25\nactions.st+=/drain_soul,if=target.health.pct<=25\nactions.st+=/shadowflame,if=target.distance<7\nactions.st+=/soulburn,if=moving\nactions.st+=/soul_fire,if=buff.soulburn.up\nactions.st+=/demon_soul\nactions.st+=/fel_flame,if=buff.fel_spark.up||moving\nactions.st+=/shadow_bolt,if=target.health.pct > 25 & target.distance > 7 ||debuff.shadow_embrace.down & target.health.pct > 25||target.distance<7&cooldown.shadowflame.remains>3\nactions.st+=/life_tap,if=mana.pct<10||glyph.life_tap.enabled&buff.life_tap.remains<5\nactions.st+=/call_action_list,name=aoe,if=active_enemies>2\n\n# AoE Rotation\nactions.aoe+=/corruption,if=target.debuff.corruption.remains<3,target_if=debuff.corruption.remains\nactions.aoe+=/unstable_affliction,if=target.debuff.unstable_affliction.remains<3\nactions.aoe+=/bane_of_agony,if=debuff.bane_of_agony.remains<tick_time&!bane_priority.ticking\nactions.aoe+=/soulburn,if=cooldown.seed_of_corruption.remains<gcd&active_enemies>2\nactions.aoe+=/seed_of_corruption,if=buff.soulburn.up&active_enemies>2\nactions.aoe+=/seed_of_corruption,if=active_enemies>=6\nactions.aoe+=/shadowflame,if=target.distance<7\nactions.aoe+=/shadow_bolt,cycle_targets=1\nactions.aoe+=/curse_of_the_elements,if=active_enemies>5&debuff.curse_of_elements.remains<3&!target.distance.yard>5\n\n# Soul Swap Logic (2 targets)\nactions.aoe+=/soul_swap,if=target.debuff.bane_of_agony.up&active_enemies=2",
					["version"] = 20240708,
					["warnings"] = "WARNING:  The import for 'aoe' required some automated changes.\nThe following auras were used in the action list but were not found in the addon database:\n - curse_of_elements\n\nThis profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 4 action lists.\n",
					["lists"] = {
						["aoe"] = {
							{
								["enabled"] = true,
								["criteria"] = "target.debuff.corruption.remains < 3",
								["description"] = "AoE Rotation",
								["action"] = "corruption",
								["target_if"] = "debuff.corruption.remains",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "target.debuff.unstable_affliction.remains < 3",
								["action"] = "unstable_affliction",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.bane_of_agony.remains < tick_time & ! bane_priority.ticking",
								["action"] = "bane_of_agony",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "cooldown.seed_of_corruption.remains < gcd & active_enemies > 2",
								["action"] = "soulburn",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "buff.soulburn.up & active_enemies > 2",
								["action"] = "seed_of_corruption",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 6",
								["action"] = "seed_of_corruption",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 7",
								["action"] = "shadowflame",
							}, -- [7]
							{
								["enabled"] = true,
								["action"] = "shadow_bolt",
								["cycle_targets"] = 1,
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 5 & debuff.curse_of_elements.remains < 3 & ! target.distance.yard > 5",
								["action"] = "curse_of_the_elements",
							}, -- [9]
							{
								["enabled"] = true,
								["action"] = "soul_swap",
								["description"] = "Soul Swap Logic (2 targets)",
								["criteria"] = "target.debuff.bane_of_agony.up & active_enemies = 2",
							}, -- [10]
						},
						["st"] = {
							{
								["enabled"] = true,
								["action"] = "summon_felhunter",
								["description"] = "Single Target Rotation",
								["criteria"] = "! pet.alive",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "group_curse",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "solo_curse",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "debuff.corruption.remains < tick_time",
								["action"] = "corruption",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_bane.remains < 15",
								["action"] = "bane_of_doom",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "target.debuff.unstable_affliction.remains < tick_time & target.health.pct > 25",
								["action"] = "unstable_affliction",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct <= 25",
								["action"] = "drain_soul",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "target.distance < 7",
								["action"] = "shadowflame",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "moving",
								["action"] = "soulburn",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "buff.soulburn.up",
								["action"] = "soul_fire",
							}, -- [10]
							{
								["action"] = "demon_soul",
								["enabled"] = true,
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "buff.fel_spark.up || moving",
								["action"] = "fel_flame",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct > 25 & target.distance > 7 || debuff.shadow_embrace.down & target.health.pct > 25 || target.distance < 7 & cooldown.shadowflame.remains > 3",
								["action"] = "shadow_bolt",
							}, -- [13]
							{
								["enabled"] = true,
								["criteria"] = "mana.pct < 10 || glyph.life_tap.enabled & buff.life_tap.remains < 5",
								["action"] = "life_tap",
							}, -- [14]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [15]
						},
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "debuff.shadow_embrace.down & target.health.pct > 25",
								["action"] = "shadow_bolt",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down & curse_grouped",
								["action"] = "group_curse",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "debuff.my_curse.down",
								["action"] = "solo_curse",
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "haunt",
								["criteria"] = "! target.debuff.haunt.up || dot.haunt.remains < cast_time + latency + 1",
								["use_off_gcd"] = 1,
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "pet.alive",
								["action"] = "demon_soul",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "debuff.unstable_affliction.down",
								["action"] = "unstable_affliction",
							}, -- [6]
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["list_name"] = "st",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "call_action_list",
								["list_name"] = "aoe",
							}, -- [8]
							{
								["enabled"] = true,
								["action"] = "haunt",
								["criteria"] = "! target.debuff.haunt.up || dot.haunt.remains < cast_time + latency + 3",
								["use_off_gcd"] = 1,
							}, -- [9]
						},
						["precombat"] = {
							{
								["enabled"] = true,
								["description"] = "Opener",
								["action"] = "volcanic_potion",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "buff.armor.down",
								["action"] = "fel_armor",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! pet.alive",
								["action"] = "summon_felhunter",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "soul_shards < 3",
								["action"] = "soul_harvest",
							}, -- [4]
						},
					},
					["author"] = "Smufrik",
				},
				["Arms"] = {
					["source"] = "WowTbc & WowSims",
					["builtIn"] = true,
					["date"] = 20240629,
					["spec"] = 1,
					["desc"] = "Arms Warrior priority for Hekili",
					["profile"] = "## Arms Warrior\n\n## Opener\nactions.precombat+=/battle_stance\nactions.precombat+=/commanding_shout,if=assigned_shout.commanding_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/battle_shout,if=assigned_shout.battle_shout&buff.my_battle_shout.down&buff.my_commanding_shout.down\nactions.precombat+=/charge\n\n## Default\nactions+=/sunder_armor,if=(!glyph.colossus_smash.enabled||cooldown.colossus_smash.remains)&(settings.debuff_sunder_enabled&target.time_to_die>((3-debuff.sunder_armor.stack)*(1.5+latency))+3&(!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<3)||debuff.sunder_armor.remains<1.5))\nactions+=/colossus_smash,if=glyph.colossus_smash.enabled&(settings.debuff_sunder_enabled&target.time_to_die>((3-debuff.sunder_armor.stack)*(1.5+latency))+3&(!debuff.major_armor_reduction.up||(debuff.sunder_armor.up&debuff.sunder_armor.stack<3)||debuff.sunder_armor.remains<1.5))\nactions+=/pummel\nactions+=/call_action_list,name=spread_rend,if=active_enemies>2&talent.blood_and_thunder.enabled\nactions+=/bladestorm,if=active_enemies>2\nactions+=/sweeping_strikes,if=active_enemies>1\nactions+=/blood_fury,if=time<119||(time>=119&target.time_to_die>130)||(target.time_to_die<130&target.health.pct)\nactions+=/recklessness,if=dot.rend.ticking\nactions+=/inner_rage,if=dot.rend.ticking\nactions+=/deadly_calm,if=dot.rend.ticking&(time<119||(time>=119&target.time_to_die>130)||(target.time_to_die<130&target.health.pct))\nactions+=/potion,if=target.health.pct<20\nactions+=/heroic_strike,if=(active_enemies=1||buff.sweeping_strikes.up)&(rage.current>=settings.queueing_threshold||buff.deadly_calm.up||buff.battle_trance.up||(cooldown.deadly_calm.remains<1&!cooldown.recklessness.remains<1&rage.current>30&!target.time_to_die<130))\nactions+=/cleave,if=active_enemies>1&!buff.sweeping_strikes.up&(rage.current>=settings.queueing_threshold||buff.deadly_calm.up||buff.battle_trance.up||(cooldown.deadly_calm.remains<1&!cooldown.recklessness.remains<1&rage.current>30&!target.time_to_die<130))\n#maybe implement heroic_leap here?\nactions+=/call_action_list,name=battle_stance,if=(buff.battle_stance.up||settings.macro_stance_dance)&(!dot.rend.ticking||overpower_now)\nactions+=/call_action_list,name=berserker_stance,if=(settings.macro_stance_dance||buff.berserker_stance.up)\nactions+=/berserker_stance,use_off_gcd=1,if=!settings.macro_stance_dance&!buff.berserker_stance.up&buff.taste_for_blood_prediction.remains>1\n\n## Spread Rend in AoE\nactions.spread_rend+=/battle_stance,use_off_gcd=1,if=!settings.macro_stance_dance&!up&!dot.rend.ticking\nactions.spread_rend+=/rend,if=!up\nactions.spread_rend+=/thunder_clap,if=dot.rend.ticking\n\n## Battle_Stance\nactions.battle_stance+=/battle_stance,use_off_gcd=1,if=!settings.macro_stance_dance&!buff.battle_stance.up\nactions.battle_stance+=/shattering_throw,if=settings.debuff_shattering_throw\nactions.battle_stance+=/rend,if=!up\nactions.battle_stance+=/overpower,if=overpower_now||overpower_filler\nactions.battle_stance+=/berserker_stance,use_off_gcd=1,if=!settings.macro_stance_dance&!buff.berserker_stance.up\n\n## Berserker_stance\nactions.berserker_stance+=/run_action_list,name=battle_stance,use_off_gcd=1,if=!dot.rend.ticking||overpower_now\nactions.berserker_stance+=/mortal_strike,if=(target.health.pct>20||buff.slaughter.remains<=1.5||talent.lambs_to_the_slaughter&dot.rend.ticking&dot.rend.remains<3||talent.wrecking_crew.enabled&!buff.enrage.up)\nactions.berserker_stance+=/whirlwind,if=active_enemies>=4\nactions.berserker_stance+=/colossus_smash,if=!debuff.colossus_smash.up\nactions.berserker_stance+=/execute,if=target.health.pct<20\nactions.berserker_stance+=/call_action_list,name=battle_stance,if=overpower_filler\nactions.berserker_stance+=/colossus_smash,if=target.time_to_die<=1.5\nactions.berserker_stance+=/slam,if=target.health.pct>20&(cooldown.mortal_strike.remains>=0.5&cooldown.colossus_smash.remains>=0.5)\nactions.berserker_stance+=/berserker_rage\nactions.berserker_stance+=/battle_shout,if=assigned_shout.battle_shout&rage<30\nactions.berserker_stance+=/commanding_shout,if=assigned_shout.commanding_shout&rage<30",
					["version"] = 20240629,
					["warnings"] = "WARNING:  The import for 'berserker_stance' required some automated changes.\nLine 2: Converted 'talent.X' to 'talent.X.enabled' (1x).\n\nThis profile is missing support for generic trinkets.  It is recommended that every priority includes either:\n - [Use Items], which includes any trinkets not explicitly included in the priority; or\n - [Trinket 1] and [Trinket 2], which will recommend the trinket for the numbered slot.\nImported 5 action lists.\n",
					["lists"] = {
						["default"] = {
							{
								["enabled"] = true,
								["criteria"] = "( ! glyph.colossus_smash.enabled || cooldown.colossus_smash.remains ) & ( settings.debuff_sunder_enabled & target.time_to_die > ( ( 3 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3 & ( ! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 3 ) || debuff.sunder_armor.remains < 1.5 ) )",
								["action"] = "sunder_armor",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "glyph.colossus_smash.enabled & ( settings.debuff_sunder_enabled & target.time_to_die > ( ( 3 - debuff.sunder_armor.stack ) * ( 1.5 + latency ) ) + 3 & ( ! debuff.major_armor_reduction.up || ( debuff.sunder_armor.up & debuff.sunder_armor.stack < 3 ) || debuff.sunder_armor.remains < 1.5 ) )",
								["action"] = "colossus_smash",
							}, -- [2]
							{
								["action"] = "pummel",
								["enabled"] = true,
							}, -- [3]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "active_enemies > 2 & talent.blood_and_thunder.enabled",
								["list_name"] = "spread_rend",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 2",
								["action"] = "bladestorm",
							}, -- [5]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1",
								["action"] = "sweeping_strikes",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "time < 119 || ( time >= 119 & target.time_to_die > 130 ) || ( target.time_to_die < 130 & target.health.pct )",
								["action"] = "blood_fury",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.ticking",
								["action"] = "recklessness",
							}, -- [8]
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.ticking",
								["action"] = "inner_rage",
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.ticking & ( time < 119 || ( time >= 119 & target.time_to_die > 130 ) || ( target.time_to_die < 130 & target.health.pct ) )",
								["action"] = "deadly_calm",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct < 20",
								["action"] = "potion",
							}, -- [11]
							{
								["enabled"] = true,
								["criteria"] = "( active_enemies = 1 || buff.sweeping_strikes.up ) & ( rage.current >= settings.queueing_threshold || buff.deadly_calm.up || buff.battle_trance.up || ( cooldown.deadly_calm.remains < 1 & ! cooldown.recklessness.remains < 1 & rage.current > 30 & ! target.time_to_die < 130 ) )",
								["action"] = "heroic_strike",
							}, -- [12]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies > 1 & ! buff.sweeping_strikes.up & ( rage.current >= settings.queueing_threshold || buff.deadly_calm.up || buff.battle_trance.up || ( cooldown.deadly_calm.remains < 1 & ! cooldown.recklessness.remains < 1 & rage.current > 30 & ! target.time_to_die < 130 ) )",
								["action"] = "cleave",
							}, -- [13]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "( buff.battle_stance.up || settings.macro_stance_dance ) & ( ! dot.rend.ticking || overpower_now )",
								["list_name"] = "battle_stance",
							}, -- [14]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "( settings.macro_stance_dance || buff.berserker_stance.up )",
								["list_name"] = "berserker_stance",
							}, -- [15]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["criteria"] = "! settings.macro_stance_dance & ! buff.berserker_stance.up & buff.taste_for_blood_prediction.remains > 1",
							}, -- [16]
						},
						["precombat"] = {
							{
								["action"] = "battle_stance",
								["enabled"] = true,
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "commanding_shout",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & buff.my_battle_shout.down & buff.my_commanding_shout.down",
								["action"] = "battle_shout",
							}, -- [3]
							{
								["action"] = "charge",
								["enabled"] = true,
							}, -- [4]
						},
						["spread_rend"] = {
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "battle_stance",
								["criteria"] = "! settings.macro_stance_dance & ! up & ! dot.rend.ticking",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "rend",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "dot.rend.ticking",
								["action"] = "thunder_clap",
							}, -- [3]
						},
						["berserker_stance"] = {
							{
								["enabled"] = true,
								["action"] = "run_action_list",
								["use_off_gcd"] = 1,
								["criteria"] = "! dot.rend.ticking || overpower_now",
								["list_name"] = "battle_stance",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "( target.health.pct > 20 || buff.slaughter.remains <= 1.5 || talent.lambs_to_the_slaughter.enabled & dot.rend.ticking & dot.rend.remains < 3 || talent.wrecking_crew.enabled & ! buff.enrage.up )",
								["action"] = "mortal_strike",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "active_enemies >= 4",
								["action"] = "whirlwind",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "! debuff.colossus_smash.up",
								["action"] = "colossus_smash",
							}, -- [4]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct < 20",
								["action"] = "execute",
							}, -- [5]
							{
								["enabled"] = true,
								["action"] = "call_action_list",
								["criteria"] = "overpower_filler",
								["list_name"] = "battle_stance",
							}, -- [6]
							{
								["enabled"] = true,
								["criteria"] = "target.time_to_die <= 1.5",
								["action"] = "colossus_smash",
							}, -- [7]
							{
								["enabled"] = true,
								["criteria"] = "target.health.pct > 20 & ( cooldown.mortal_strike.remains >= 0.5 & cooldown.colossus_smash.remains >= 0.5 )",
								["action"] = "slam",
							}, -- [8]
							{
								["action"] = "berserker_rage",
								["enabled"] = true,
							}, -- [9]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.battle_shout & rage < 30",
								["action"] = "battle_shout",
							}, -- [10]
							{
								["enabled"] = true,
								["criteria"] = "assigned_shout.commanding_shout & rage < 30",
								["action"] = "commanding_shout",
							}, -- [11]
						},
						["battle_stance"] = {
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "battle_stance",
								["criteria"] = "! settings.macro_stance_dance & ! buff.battle_stance.up",
							}, -- [1]
							{
								["enabled"] = true,
								["criteria"] = "settings.debuff_shattering_throw",
								["action"] = "shattering_throw",
							}, -- [2]
							{
								["enabled"] = true,
								["criteria"] = "! up",
								["action"] = "rend",
							}, -- [3]
							{
								["enabled"] = true,
								["criteria"] = "overpower_now || overpower_filler",
								["action"] = "overpower",
							}, -- [4]
							{
								["enabled"] = true,
								["use_off_gcd"] = 1,
								["action"] = "berserker_stance",
								["criteria"] = "! settings.macro_stance_dance & ! buff.berserker_stance.up",
							}, -- [5]
						},
					},
					["author"] = "Supernuss",
				},
			},
		},
	},
}
