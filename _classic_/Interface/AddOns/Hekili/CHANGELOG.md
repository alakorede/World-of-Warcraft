# Hekili

## [v4.4.0-0.9.5](https://github.com/Hekili/hekili/tree/v4.4.0-0.9.5) (2024-08-22)
[Full Changelog](https://github.com/Hekili/hekili/compare/v4.4.0-0.9.0...v4.4.0-0.9.5) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Merge pull request #3493 from Smufrik/cataclysm  
    Cataclysm  
- Merge pull request #3508 from Supernuss/cataclysm  
    Multiple Class updates and Mage Support  
- Merge pull request #28 from Supernuss/cataclysm\_merger  
    * Update Warlock.lua  
    Updated a typo on bane of doom  
    * Update Warlock.lua  
    Added a first draft of a beta profile for Affliction  
    * Cata Priest release  
    - Updated talent information  
    - Included new spells in the game  
    - Revised ability IDs to reflect changes in Cataclysm  
    - Added a beta profile specifically for the shadow class  
    * Warlock updates  
    Intelligent Pet Summoning: The profile dynamically chooses the optimal demon to summon based on the settings.pet\_twisting option. This ensures the maximum uptime of the powerful Demon Soul buff through the Felguard or the Felhunter.  
    Robust Pre-Combat Setup: The pre-combat routine has been significantly enhanced. It intelligently applies Fel Armor and Soul Link only if they are not already active, preventing unnecessary spell casts. It also optimizes the use of the Volcanic Potion by waiting until Metamorphosis is active, maximizing the potion's effectiveness during the high-damage phase.  
    Dynamic Resource Management: The profile proactively manages resources like mana and Soul Shards. Life Tap is strategically integrated into the rotation when mana is low and Metamorphosis is not coming off cooldown soon. Additionally, Soul Harvest is used judiciously, only when the Warlock has fewer than three Soul Shards, optimizing resource generation.  
    Cooldown Optimization: The use of Synapse Springs has been introduced to take advantage of longer Metamorphosis cooldowns, ensuring that this powerful cooldown is utilized efficiently.  
    Demon Soul Enhancement: The profile now leverages Soulburn more effectively. It intelligently consumes a Soul Shard to summon the Felguard when the Demon Soul buff is about to expire, maximizing the duration of this crucial damage increase.  
    Advanced AoE Handling: The AoE rotation has been improved significantly. It now dynamically switches between Immolation Aura and Rain of Fire based on the number of targets, ensuring optimal damage output in various scenarios. Additionally, Felstorm is used only when a pet is active, preventing errors and ensuring optimal pet utility.  
    Streamlined Single-Target Rotation: The core single-target rotation has been refined for smoother execution. The Shadow Bolt filler condition has been simplified, prioritizing it when no DoTs are ticking or when Shadow and Flame is about to expire. Bane of Agony has also been integrated to maximize damage on shorter encounters.  
    Flexible Curse Management: The profile dynamically handles curses, selecting either the single-target or group version of Curse of the Elements based on the curse\_grouped setting, adapting to different encounter types.  
    * Update Priest.lua  
    Updated glyphs  
    * Update WarlockDemonologybeta.simc  
    * Create WarlockAfflictionBeta  
    Added apl for Affliction  
    * Rename WarlockDemonologybeta.simc to WarlockDemonology.simc  
    * Rename WarlockAfflictionBeta to WarlockAfflictionBeta.simc  
    * Update Warlock.lua  
    * Create PriestShadowBeta.simc  
    * Update Rogue.lua  
    Added functions from retail assasination.lua and updated variables in the rotations based on theorycrafting forums  
    * Update RogueAssasination.simc  
    * Update RogueAssasination.simc  
    * Update Rogue.lua  
    * Update Rogue.lua  
    * Update Rogue.lua  
    updated based on comments  
    * Update Priest.lua  
    updates based on comments  
    * -Fixed logic for backstab  
    * -Added Felflame  4pc prock  
    * Update Warlock.lua  
    fixed q typo  
    * Updated logic for affliction rota  
    * updated curse settings  
    update to the curse settings for cata since we can use banes and curses now  
    * Hotfix  
    --Fixed where the rota semed to get stuck on shadowbolt in affliction  
    --Added logic to demonology aoe rotation  
    * Update Warlock.lua  
    added curse of guldan  
    * Destruction beta release  
    * Update affliction  
    updated logic for the profile clipping unstable affliction  
    * Update Warlock.lua  
    * Update Priest.lua  
    Added power word fortune  
    changed some ids that were wrong  
    optimization to the shadow profile  
    * Update PriestShadowBeta.simc  
    * Create WarlockDestructionbeta.simc  
    * Update WarlockDemonology.simc  
    * Update WarlockAfflictionBeta.simc  
    * Update Warlock.lua  
    * Update RogueAssasination.simc  
    Fixes based on reviews  
    * Rename PriestShadowBeta.simc to PriestShadow.simc  
    * Update Rogue.lua  
    updated typos in assa profile and moved settings in the code  
    * Update Rogue.lua  
    * Update Priest.lua  
    * Update Rogue.lua  
    * Rewriten the sub spec  
    * Update Rogue.lua  
    updated sub rogue with new logic  
    * Update Priest.lua  
    added dark archangel  
    * Added Soul Casket trinket  
    * Update Warlock.lua  
    ---------  
    Co-authored-by: Smufrik <76882851+Smufrik@users.noreply.github.com>  
    Co-authored-by: Hekili <Hekili@users.noreply.github.com>  
    Co-authored-by: Victor Apocalypse Rodrigues <victor.apocalypse@gmail.com>  
    Co-authored-by: Georgamel <123156945+georgedeam@users.noreply.github.com>  
- Merge branch 'cataclysm' of https://github.com/Hekili/hekili into cataclysm\_merger  
- Implement cpthampton's mage.lua  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Feral: emergency\_bite only with bitw  
- Merge pull request #3474 from georgedeam/cataclysm  
    Update Warlock.lua  
- Update Warlock.lua  
- Merge pull request #3448 from vapocalypse/cataclysm  
    Added Soul Casket trinket  
- Added Soul Casket trinket  
- Shadow Orb; Rota Change  
- fix DP-duration  
- Merge branch 'Hekili:cataclysm' into cataclysm  
- Update Rogue.lua  
    -Fixed errors from the assasination apl  
    -Cleanup of the assasination apl  
- Shadow: Archangel fixes  
- Shadow: Some fixes and new Rotation  
- DK: Frost DnD in AoE  
- DK: add runic\_corruption; updated unholy rotation  
