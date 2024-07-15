# Hekili

## [v4.4.0-0.9.0](https://github.com/Hekili/hekili/tree/v4.4.0-0.9.0) (2024-07-15)
[Full Changelog](https://github.com/Hekili/hekili/compare/v3.4.3-1.0.7...v4.4.0-0.9.0) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Merge pull request #3306 from Smufrik/cataclysm  
    Updates to the warlock profile and lua, updated the priest.lua  
- Update Priest.lua  
    added dark archangel  
- Update Rogue.lua  
    updated sub rogue with new logic  
- Rewriten the sub spec  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Update Rogue.lua  
- Update Priest.lua  
- Update Rogue.lua  
- Update Rogue.lua  
    updated typos in assa profile and moved settings in the code  
- Rename PriestShadowBeta.simc to PriestShadow.simc  
- Update RogueAssasination.simc  
    Fixes based on reviews  
- Merge pull request #3308 from SergioRt1/druid-feral  
    [Cata] Enhancements and bug fixes for Feral Druid damage calculations, pending actions and performance  
- Merge pull request #3314 from Supernuss/cata\_dk  
    Fix Potions; Fix Danceless-Arms; Blood-DK AoE-Fix; New Retri-APL  
- Merge pull request #3303 from vapocalypse/cataclysm  
    Improved Enhancement Shaman APL  
- Update ShamanEnhancement.simc  
    * target.debuff -> debuff  
    * Allow Fire Nova with Flame Shock on any enemy.  
- Update Warlock.lua  
- Update WarlockAfflictionBeta.simc  
- Update WarlockDemonology.simc  
- Create WarlockDestructionbeta.simc  
- Update PriestShadowBeta.simc  
- Update Priest.lua  
    Added power word fortune  
    changed some ids that were wrong  
    optimization to the shadow profile  
- Fix rake\_dpe variable name  
- Update Warlock.lua  
- Update affliction  
    updated logic for the profile clipping unstable affliction  
- Destruction beta release  
- Update Warlock.lua  
    added curse of guldan  
- Hotfix  
    --Fixed where the rota semed to get stuck on shadowbolt in affliction  
    --Added logic to demonology aoe rotation  
- Elemental Shaman; Shaman Glyphs  
- Fix Potions; Fix Danceless-Arms; Blood-DK AoE-Fix; New Retri-APL based on Sim  
- updated curse settings  
    update to the curse settings for cata since we can use banes and curses now  
- Updated logic for affliction rota  
- Update Warlock.lua  
    fixed q typo  
- -Added Felflame  4pc prock  
- -Fixed logic for backstab  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Fix calc\_rip\_refresh\_time and sorted\_actions  
- Fix Damage calculations  
- Update Priest.lua  
    updates based on comments  
- Update Rogue.lua  
    updated based on comments  
- Merge pull request #3298 from Supernuss/cata\_dk  
    Death\_Runes, Unholy Rotation, Survival Hunter, Minor Druid Fixes  
- Warrior: fix overpower\_now; update tooltip  
- Cat AoE rotation (multi-rake)  
- Druid feral minor fixes (#26)  
    * Clip roar  
    * fix on berserk\_expected\_at  
    * Update auras to proper Cata values  
    * Calc bite dpe  
    * fix simc dont use clearcasting on maul while bearweaving  
    * Calc rip tick damage  
    * Fix berserk aura  
    * Fix conflicts  
- Update Rogue.lua  
- Update Rogue.lua  
- Update RogueAssasination.simc  
- Update RogueAssasination.simc  
- Update Rogue.lua  
    Added functions from retail assasination.lua and updated variables in the rotations based on theorycrafting forums  
- Create PriestShadowBeta.simc  
- Update Warlock.lua  
- Rename WarlockAfflictionBeta to WarlockAfflictionBeta.simc  
- Rename WarlockDemonologybeta.simc to WarlockDemonology.simc  
- Create WarlockAfflictionBeta  
    Added apl for Affliction  
- Update WarlockDemonologybeta.simc  
- Update Priest.lua  
    Updated glyphs  
- Warlock updates  
    Intelligent Pet Summoning: The profile dynamically chooses the optimal demon to summon based on the settings.pet\_twisting option. This ensures the maximum uptime of the powerful Demon Soul buff through the Felguard or the Felhunter.  
    Robust Pre-Combat Setup: The pre-combat routine has been significantly enhanced. It intelligently applies Fel Armor and Soul Link only if they are not already active, preventing unnecessary spell casts. It also optimizes the use of the Volcanic Potion by waiting until Metamorphosis is active, maximizing the potion's effectiveness during the high-damage phase.  
    Dynamic Resource Management: The profile proactively manages resources like mana and Soul Shards. Life Tap is strategically integrated into the rotation when mana is low and Metamorphosis is not coming off cooldown soon. Additionally, Soul Harvest is used judiciously, only when the Warlock has fewer than three Soul Shards, optimizing resource generation.  
    Cooldown Optimization: The use of Synapse Springs has been introduced to take advantage of longer Metamorphosis cooldowns, ensuring that this powerful cooldown is utilized efficiently.  
    Demon Soul Enhancement: The profile now leverages Soulburn more effectively. It intelligently consumes a Soul Shard to summon the Felguard when the Demon Soul buff is about to expire, maximizing the duration of this crucial damage increase.  
    Advanced AoE Handling: The AoE rotation has been improved significantly. It now dynamically switches between Immolation Aura and Rain of Fire based on the number of targets, ensuring optimal damage output in various scenarios. Additionally, Felstorm is used only when a pet is active, preventing errors and ensuring optimal pet utility.  
    Streamlined Single-Target Rotation: The core single-target rotation has been refined for smoother execution. The Shadow Bolt filler condition has been simplified, prioritizing it when no DoTs are ticking or when Shadow and Flame is about to expire. Bane of Agony has also been integrated to maximize damage on shorter encounters.  
    Flexible Curse Management: The profile dynamically handles curses, selecting either the single-target or group version of Curse of the Elements based on the curse\_grouped setting, adapting to different encounter types.  
- Cata Priest release  
    - Updated talent information  
    - Included new spells in the game  
    - Revised ability IDs to reflect changes in Cataclysm  
    - Added a beta profile specifically for the shadow class  
- fix overpower\_now  
- further arms improvements  
- Warrior Rotation and Cata Rage Gain; minor expose\_armor fix  
- Fix switched DK presences  
- Complete Sync by removing duplicate synapse\_springs  
- Sync Cataclysm with Hekili (#25)  
    * Cata beta tfb optimization (#22)  
    * update tfb every tick, remove +3 to starting point;  
    * update tfb refresh duration  
    * Sync Cataclysm with Hekili (#24)  
    * - Added spell description for Unleash Elements  
    - Added buffs Unleash Flame and Unleash Wind  
    * Update RogueAssasination.simc  
    * Update RogueAssasination.simc  
    * Update RogueAssasination.simc  
    * Update Rogue.lua  
    * Improved action list for Enhancement Shaman.  
    * Corrected flame shock condition  
    * Update RogueAssasination.simc  
    * Update Rogue.lua  
    * Update RogueAssasination.simc  
    * Update RogueAssasination.simc  
    * Update Rogue.lua  
    * Update RogueAssasination.simc  
    * Update Rogue.lua  
    added settings for backstab to not be used under 35% when soloplay  
    * Update RogueCombat.simc  
    * Update RogueCombat.simc  
    * Update RogueAssasination.simc  
    * Update RogueCombat.simc  
    * Update RogueAssasination.simc  
    * Update RogueAssasination.simc  
    * Update Rogue.lua  
    updated a typo  
    * Update RogueCombat.simc  
    * Update RogueAssasination.simc  
    * Update RogueCombat.simc  
    * Update RogueCombat.simc  
    * Update RogueCombat.simc  
    * Update RogueCombat.simc  
    * Update RogueCombat.simc  
    * Update RogueAssasination.simc  
    * Update Classes.lua  
    Added Potion of the Tol'vir  
    * Create WarlockDemonologybeta.simc  
    a first draft for demo lock  
    * Update Classes.lua  
    Added Volcanic potion  
    * Update WarlockDemonologybeta.simc  
    * Update Warlock.lua  
    addes felstorm  
    * Update Warlock.lua  
    Demo beta build  
    * Update WarlockDemonologybeta.simc  
    * Update Warlock.lua  
    * Update WarlockDemonologybeta.simc  
    rework of the rotation  
    * Update Warlock.lua  
    Updated rotation and some ids that were wrong  
    * Added logic for pet twisting and fixed soulshard value  
    * Update Rogue.lua  
    -Assa, added trinket usage and modified logic  
    -combat updated logic  
    * Update Classes.lua  
    Added   
    Trinket-Unsolvable Riddle  
    tailoring enchant Swordguard Embroidery  
    Potion of the tolvir  
    volcanic potion  
    * Update RogueAssasination Logic  
    * Update RogueCombat logic  
    * Update Warlock.lua  
    * Update WarlockDemonologybeta.simc  
    * Update RogueAssasination.simc  
    * Update RogueAssasination.simc  
    * Update RogueCombat.simc  
    * Update Rogue.lua  
    * Update Warlock.lua  
    * Update WarlockDemonologybeta.simc  
    * Update Warlock.lua  
    * Update WarlockDemonologybeta.simc  
    * Update Warlock.lua  
    * Update WarlockDemonologybeta.simc  
    * Updated Assa logic  
    Fixed a typo wich made rupture get stuck  
    * Update RogueAssasination.simc  
    fixed a typo wich made rupture get stuck  
    ---------  
    Co-authored-by: Elliott Birch <elliottabirch@gmail.com>  
    Co-authored-by: Victor Apocalypse Rodrigues <victor.apocalypse@gmail.com>  
    Co-authored-by: Smufrik <76882851+Smufrik@users.noreply.github.com>  
    Co-authored-by: Hekili <Hekili@users.noreply.github.com>  
- Warrior: fix battle\_trance  
- Cata beta tfb optimization (#22) (#23)  
    * update tfb every tick, remove +3 to starting point;  
    * update tfb refresh duration  
    Co-authored-by: Elliott Birch <elliottabirch@gmail.com>  
- Blood Rotation based on WoWSims, Unholy DeathCoil Pooling fix  
- Update Warlock.lua  
    Added a first draft of a beta profile for Affliction  
- Improved Enhancement Shaman ACL  
- Improved Enhancement Shaman ACL  
- fix frost\_fever for real  
- FrostDK: Implement Frost\_Fever fix  
- Unholy: update profile with aoe changes  
- Fix Debuff tracking for shared debuff  
- Fix shared frost\_fever tracking  
- Replace shared aura detection.  
- Ghouls as Totem (outside UH)  
- dk: frost\_fever unshare between DKs  
- Update Warlock.lua  
    Updated a typo on bane of doom  
- Merge pull request #3297 from Smufrik/cataclysm  
    Updates for Rogue and warlock  
- Update RogueAssasination.simc  
    fixed a typo wich made rupture get stuck  
- Updated Assa logic  
    Fixed a typo wich made rupture get stuck  
- druid: clip\_roar implementation; rake, rip ready\_time fixes; bearweave fixes  
- unholy\_frenzy texture fix  
- raise\_dead cooldown arithmetic fix  
- remove raise\_dead item conditions from wrath  
- Fix Priority Import  
- DK: add missing mastery talents; add cooldowns to Frost-Rotation  
- quick frost rotation; add commented glyphs; add pillar\_of\_frost  
- update Bear Rage calculation for Cata  
- Druid add synapse\_springs; Guardian remove aggro-check during catweave  
- add master\_of\_ghouls talent; Unholy Rota add some AoE and lowlevel  
- Update WarlockDemonologybeta.simc  
- Update Warlock.lua  
- Update WarlockDemonologybeta.simc  
- Update Warlock.lua  
- Update WarlockDemonologybeta.simc  
- Update Warlock.lua  
- Update Rogue.lua  
- Update RogueCombat.simc  
- Update RogueAssasination.simc  
- Update RogueAssasination.simc  
- fix unholy pack selector  
- unholy rotation; dk spells; synapse\_springs  
- state everything  
- remove ghoul\_frenzy; add shadow\_infusion and dark\_transformation; switch casts to spend\_runes  
- Update WarlockDemonologybeta.simc  
- Update Warlock.lua  
- Update RogueCombat logic  
- Update RogueAssasination Logic  
- Update Classes.lua  
    Added   
    Trinket-Unsolvable Riddle  
    tailoring enchant Swordguard Embroidery  
    Potion of the tolvir  
    volcanic potion  
- Update Rogue.lua  
    -Assa, added trinket usage and modified logic  
    -combat updated logic  
- trying to check state  
- implement spend\_runes  
- Added logic for pet twisting and fixed soulshard value  
- check rune-requirements for runes to be used  
- get active runes, death\_runes and leftmost  
- precast reset and selection by type  
- Update Warlock.lua  
    Updated rotation and some ids that were wrong  
- Update WarlockDemonologybeta.simc  
    rework of the rotation  
- death\_runes before forecast  
- fix dk forecast and some death\_runes tests  
- Update Warlock.lua  
- Update WarlockDemonologybeta.simc  
- Update Warlock.lua  
    Demo beta build  
- Update Warlock.lua  
    addes felstorm  
- Update WarlockDemonologybeta.simc  
- Update Classes.lua  
    Added Volcanic potion  
- Create WarlockDemonologybeta.simc  
    a first draft for demo lock  
- Update Classes.lua  
    Added Potion of the Tol'vir  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update RogueCombat.simc  
- Update RogueCombat.simc  
- Update RogueCombat.simc  
- Update RogueCombat.simc  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update Rogue.lua  
    updated a typo  
- Update RogueAssasination.simc  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update RogueCombat.simc  
- Update Rogue.lua  
    added settings for backstab to not be used under 35% when soloplay  
- Update RogueAssasination.simc  
- Merge pull request #3293 from Smufrik/cataclysm  
    Cata Rogue Assa fine tune  
- Merge pull request #3290 from vapocalypse/cataclysm  
    Enhancement Shaman updates  
- Update Rogue.lua  
- Update RogueAssasination.simc  
- Update RogueAssasination.simc  
- Update Rogue.lua  
- Update RogueAssasination.simc  
- Corrected flame shock condition  
- Improved action list for Enhancement Shaman.  
- Druid: Update some Aura IDs and durations  
- Hunter: Aimed Shot is instant when Fire! is up  
- Hunter: update velocities and handler/impact  
- Update Rogue.lua  
- Update RogueAssasination.simc  
- Update RogueAssasination.simc  
- Update RogueAssasination.simc  
- Hunter: enable ES last\_tick-clipping; fix SS auras; enable serpent\_spread; add toggle to deterrence and call\_of\_the\_wild  
- Hunter: fix kill\_shot without aura  
- Hunter: update Rotation, standardize simc name  
- Hunter: Fix Killshot; add arcane\_shot-threshold; aoe=2  
- Hunter: Fix Killshot; add arcane\_shot-threshold; aoe=2  
- - Added spell description for Unleash Elements  
    - Added buffs Unleash Flame and Unleash Wind  
- Merge pull request #19 from Hekili/cataclysm  
    Sync from upstream  
- Merge pull request #3288 from Supernuss/cata\_beta  
    Druid: implemented current sim thraungleaveweave  
- Merge pull request #3287 from Smufrik/cataclysm  
    Assa rogue hotfix  
- Druid: remove flowerweave properly  
- Update Rogue.lua  
- Update RogueAssasination.simc  
    updated logic for envenom  
- Update Rogue.lua  
    updated logic for envenom  
- Update Rogue.lua  
    Synced the rota with the apl  
- Blessings aura Id update and remove from paladin.lua  
- Update RogueCombat.simc  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update Rogue.lua  
- Update RogueCombat.simc  
- Druid: implemented current sim thraungleaveweave  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Update RogueAssasination.simc  
- Merge pull request #3284 from towicode/cataclysm  
    [Cataclysm]Blood DK Tweaks  
- Merge pull request #3285 from Supernuss/cata\_beta  
    Warrior: Overpower optimization  
- Update Rogue.lua  
- Update Rogue.lua  
    hotfix where backstab wasnt loading  
- Fix epidemic timer  
- DK: Blood rotation changes by Todd  
- DK: Update frost\_fever debuff Id  
- Warrior: Overpower optimization; colossus\_smash default toggle; updated rotation; heroic\_throw toggle  
-  Update expiry timing and simc file  
- Merge pull request #3278 from Smufrik/cataclysm  
    Rogue update  
- Merge branch 'cataclysm' into cataclysm  
- Formatting  
- Minor BloodDK Changes  
- Update RogueCombat.simc  
- Update Rogue.lua  
- Update RogueCombat.simc  
- Merge branch 'cataclysm' of https://github.com/Hekili/hekili into cataclysm  
- Sort Shaman talents.  
- Merge pull request #3279 from Supernuss/cata\_beta  
    Implement shared Debuffs and BoK/MotW  
- Update RogueCombat.simc  
- Update Rogue.lua  
    updated an error where assa rotation was put under combat  
- Druid: Add toggle for Demo Roar  
- Warrior: set pummel default toggle interrupts, inner\_rage lockout with deadly\_calm  
- Implement shared Debuffs and BoK/MotW  
- Update Rogue.lua  
- Merge pull request #3276 from Thrensing/cataclysm  
    Cataclysm  
- Merge pull request #3277 from Supernuss/cata\_beta  
    Warrior: Talent fixes, TfB fixes, implement stance-dacing macros toggle; Druid: Tank rota  
- Druid: Guardian add manual catweave  
- Druid: update tank rotation  
- Update Rogue.lua  
- Update Rogue.lua  
- Update RogueAssasination.simc  
- Update main.yml for cata releases  
- Update RogueAssasination.simc  
- Warrior: Implement Stance-Dance-Macro Toggle  
- Warrior: fix some textures  
- Warrior: fix talent ranks and update rota  
- More Warlock review.  
- Warrior: fixes and new APL  
- warrior: restore overpower\_ready pseudo buff name  
- Merge pull request #17 from Supernuss/pr/Supernuss/16  
    Pr/supernuss/16  
- Fix Diff  
- Merge branch 'cata\_beta' into pr/Supernuss/16  
- Merge pull request #15 from Hekili/cataclysm  
    Sync fork  
- Fix some warnings and IDs for Warlock.  
- Update ArmsWarrior.simc  
- Update Warrior.lua  
- Merge pull request #3274 from Supernuss/cata\_beta  
    Warlock: update Glyphs and abilities  
- Rogue partial cleanup.  
- Deathknight: update blood-profile version for auto-refresh  
- Warrior cleanup.  
- Warlock: minor fix  
- Warlock: Basic abilities and updated glyphs  
- Merge pull request #3271 from Smufrik/cataclysm  
    Rogue.lua Cataclysm update  
- Merge pull request #3268 from himea-saito/cataclysm  
    Cataclysm - Fix Spec Detection & Paladin Improvements  
- Update ArmsWarrior.simc  
- Update Warrior.lua  
- Update Rogue.lua  
- Update Rogue.lua  
- Update Rogue.lua  
- Changed to Hekili's fixed spec detection for Paladin  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Fix package selector.  
- Fix primary talent tree detection.  
- Merge pull request #14 from Hekili/cataclysm  
    Cataclysm sync with Hekili  
- Merge branch 'cataclysm' of https://github.com/himea-saito/hekili into cataclysm  
- Reverted SpecializationChanged() Cataclysm specific detection  
    See comments at https://github.com/Hekili/hekili/pull/3268 for details  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Update Rogue.lua  
- Merge pull request #3259 from Smufrik/cataclysm  
    Rogue update apls, Warrior lua and arms v1 simc  
- Merge branch 'cataclysm' of https://github.com/himea-saito/hekili into cataclysm  
- Retribution improvements  
    Added smarter tracking to predict the time to rebuild Holy Power for Zealotry and Inquisition if we reach 3 Holy Power at a time where we may want to save it.  
    Also cleaned up some unused functions.  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Fix spec detection  
    Cataclysm uses GetPrimaryTalentTree() to return the ID of the current specialization (1, 2, 3), which was later replaced by GetSpecialization() in Mists of Pandaria.  
- Update ArmsWarrior.simc  
- Update Warrior.lua  
- Merge pull request #3266 from himea-saito/cataclysm  
    Cataclysm Survival Hunter Bug Squash  
- Update ArmsWarrior.simc  
- Merge branch 'cataclysm' of https://github.com/himea-saito/hekili into cataclysm  
- Fix Hunter Explosive Shot cost being 0  
    Explosive Shot spend function wasn't returning any value so the cost was returning null.  
- Update Warrior.lua  
- Update Warrior.lua  
- Update Warrior.lua  
- Update ArmsWarrior.simc  
- Update Warrior.lua  
- Druid: minor APL change  
- Merge pull request #13 from Hekili/cataclysm  
    Resync with Hekili repo  
- Use spec.blood to adjust Outbreak's CD.  
- Use Talent Tab IDs to identify actual specializations.  
- Merge pull request #3256 from himea-saito/cataclysm  
    Cataclysm MM and BM Hunter APL's  
- Update HunterSurvivalHimeaBeta.simc  
    cycle\_targets is a 1/0 truthy flag  
- Merge pull request #3260 from Supernuss/cata\_beta  
    Druid: LeaveWeave fix; Rip\_tracker TF and target-agnostic extension; primal\_madness; Guardian Rota  
- Update ArmsWarrior.simc  
- Update ArmsWarrior.simc  
- Update ArmsWarrior.simc  
- Update ArmsWarrior.simc  
- Update Warrior.lua  
- Add files via upload  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Druid: change primal\_madness expiration setters  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update RogueCombat.simc  
- Merge pull request #3257 from frissle/cataclysm  
    Update Warlock.lua  
- Druid: Implement Guardian Profile and bear\_tank\_mode into FeralDPS Spec  
- Druid: add primal\_madness tracking  
- Druid: Fix RipTracker resetting  
- Update RogueAssasination.simc  
- Update RogueAssasination.simc  
    updated logic for execution face  
- Update Warlock.lua  
    Fixed talent typos  
- Update Warlock.lua  
    Talents Updated for Cataclysm Classic  
- Druid: fix bloodletting extension (for real); try tf-snapshotting using rip\_tracker  
- Fix Cobra Shot and Steady Shot while moving  
    Cobra Shot and Steady Shot were not being recommended while moving with Aspect of the Fox up  
- Merge branch 'cataclysm' of https://github.com/himea-saito/hekili into cataclysm  
- Fix Explosive Trap not being recommended after Trap Launcher  
    If the setting for Trap Launcher Macro was not toggled on, Explosive Trap would not be recommended after.  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Update Hunter.lua to include BM and MM  
    Added all Hunter specs and fixed a few bugs with ability tracking  
- Druid: trying to implement primal\_madness energy removal  
- Priest: fix some warnings.  
- Mage: Remove priorities; update spell IDs and talents.  
- Fix-ish skeleton.  
- Druid: fix minRange for leaveweave  
- Hunter: Clean-up auras with multiple IDs.  
- Make Bear Form and Dire Bear Form interchangeable.  
- Merge pull request #3255 from Supernuss/cata\_beta  
    Druid: rake tf delay; settings; stampede; bloodletting  
- Druid: simplify bloodletting-extensions; add next\_refresh\_at by extracting pools; update leaveweave with math; remove deprecated settings; update rota  
- Update RogueAssasination.simc  
    changed logic for envenom  
- Update RogueCombat.simc  
    canged logic for rupture and revealing strike  
- Account for Stampede procs when calc TF energy treshhold  
- Druid: update timers for cata  
- Druid: Add Rake TF delay; fix lacerate in Bearweave  
- Merge pull request #3249 from Supernuss/cata\_beta  
    Druid: Bearweave, Leaveweave, Rota Changes  
- Druid: Implement Bearweave; Implement Leaveweave; update Rota  
- Merge pull request #3245 from towicode/cataclysm  
    [Cataclysm][BDK] Add Outbreak and adjust glyphs  
- Minor UI improvement for Paladin settings  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Fix Retribution Paladin interaction with Guardian of Ancient Kings  
    Retribution APL had some logic that failed to account for if a player can't actually use Guardian of Ancient Kings below level 85. Since the current max level is 80, this was causing some issues at level 80 recommendations for AoE rotation.  
- Update Shaman.lua  
- Update Shaman.lua  
- Update ShamanEnhancement.simc  
- Update ShamanEnhancement.simc  
- Update Shaman.lua  
- Update Shaman.lua  
- More BDK changes and priority  
- Fix Frenzy stacks tracking with hunter pet  
- Merge pull request #3237 from Smufrik/cataclysm  
    Rogue apls cata  
- Merge pull request #3242 from himea-saito/cataclysm  
    Cataclysm Hunter Support  
- Merge pull request #3235 from towicode/cataclysm  
    [Blood DK][Cataclysm] add basic blood dk, rotation, talent, spells  
- implement pulverize  
- Druid: implement try\_tigers\_fury, try\_berserk, update APL  
- Update RogueAssasination.simc  
- (Very) Small typo fix  
- Fix Divine Storm Holy Power gain  
- Update Shaman.lua  
- Update Shaman.lua  
- Update Shaman.lua  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Completed Survival Hunter APL  
    Survival Hunter is tentatively finished. There's still a couple behaviors I don't like but they are edge cases that likely won't matter much overall.  
    Also removed the jankey double\_steady\_shot variable as we can use prev\_gcd.1.steady\_shot to get the same info.  
- Create ShamanEnhancement.simc  
- Update RogueCombat.simc  
    first rotation that worked with the state of the libs atm  
- Added support for Hunter  
    Full rehaul to Hunter.lua for Cataclysm updates.  
    Minor cleanup for Paladin.lua  
- Changed spec registration to paladin to fix state.spec bug  
    spec:Register was overwriting state.spec and causing some unexpected behavior when looking up the current spec  
- Update RogueAssasination.simc  
- Update RogueSubtlety.simc  
- Update RogueSubtlety.simc  
- Update RogueSubtlety.simc  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update RogueAssasination.simc  
- Update RogueCombat.simc  
- Update Rogue.lua  
- Update Rogue.lua  
- Add files via upload  
- Add files via upload  
- Add files via upload  
- Merge pull request #3233 from Supernuss/cata\_beta  
    Last-tick clipping for rake and rip fixed  
- Merge pull request #3234 from himea-saito/cataclysm  
    Added Protection paladin and minor improvements to Retribution  
- Undo that change to cooldown  
- update cooldowns on runes  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- add basic blood dk, rotation, talent, spells  
- Added Protection paladin and minor improvements to Retribution  
    (～￣▽￣)～  
- minor rotation change until we build better function for TF  
- druid: change readytime on rip and rake to enable last-tick-clipping  
- Merge pull request #3232 from Supernuss/cata\_beta  
    Feral now functional incl. rotation  
- fix clip\_mangle  
- FF now major\_armor\_reduction; add FF aura; druid pooling logic; several druid fixes; druid rota update  
- Druid: remove glyphed faerie\_fires; update and add several feral expressions  
- Merge pull request #3227 from himea-saito/cataclysm  
    Cataclysm Paladin Support  
- Merge pull request #3225 from Supernuss/cata\_beta  
    Druid abilities, functions; Mastery calculation  
- Fixed the APL package string  
    Not sure how this got messed up, but it should be accurate now...  
- Typo and formatting fix  
    ┌(。Д。)┐  
- Some cleanup  
    (づ￣ 3￣)づ  
- Completed Retribution APL  
    Added all paladin abilities and APL for Retribution rotation.  
    Protection and Holy are still WIP.  
    Cataclysm consumeables need to be added.  
- druid: add rip snapshot, update bite\_at\_end, bite\_before\_rip, rip\_refresh interpolation  
- Added some missed talents and abilities  
    (。_。)  
- Added all abilities, glyphs, and talents to Paladin.lua  
    All register data for Paladin has been updated, although the settings and state tables at the end of the file have not been updated to reflect the changes yet.  
- Further updates for paladin.lua  
    Finished updates for buffs/debuffs and started making changes for registered abilities.  
- add delay\_rip function  
- druid: update shred and rake damage calc; bring talents in right order  
- Continued updates to Paladin.lua  
    Started updating the Paladin registered auras section. This array has several new abilities and auras added in Cataclysm and also removes quite a few old ones, along with alias spell id's.  
    This section is only half complete, more changes are needed.  
- Delete State Overwrites since default APIs exist since Cata  
- Updated Paladin talents table  
    Updated the existing table with new talents. Not entirely certain if this was necessary, but as Hekili referenced in Discord, I couldn't find a better way to pull this info dynamically:  
    https://discord.com/channels/307520968895627264/1024409565489545357/1232061540002435203  
- Merge pull request #3214 from Supernuss/cata\_beta  
    Cataclysm Boilerplate  
- stampede2-ravage not removing clearcasting; add first feral simc  
- remove dire\_bear; implement stampede and ravage!  
- Add Druid Abilities  
- Fix GetGlyphSocketInfo() and max glyph amount changed  
- Add missing Commas to Druid Glyphs  
- Changed all WrathTalentToSpellID to TalentToSpellID  
- Add Druid Talents (ranks unordered)  
- Add Druid Glyphs  
- Add CataclysmTalentToSpellID  
- fix BoK  
- temporarily removed LibDualSpec from .gitignore  
- No more lua errors  
- Replaced Cata with Cataclysm due to project-name  
- Create Cata Boilerplate from Wrath  
