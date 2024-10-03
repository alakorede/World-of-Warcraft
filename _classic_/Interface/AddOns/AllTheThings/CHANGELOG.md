# AllTheThings

## [4.0.16](https://github.com/DFortun81/AllTheThings/tree/4.0.16) (2024-09-29)
[Full Changelog](https://github.com/DFortun81/AllTheThings/compare/4.0.15...4.0.16) [Previous Releases](https://github.com/DFortun81/AllTheThings/releases)

- Only 87 critical errors and 2752 for classic, good enough for release  
- Split up Tol Barad and Tol Barad Peninsula.  
- Classic: Reparse  
- Fixed the molten lord objective for Fire in the Skies.  
- Disable deprecated diagnostic on known parts  
- Some unused code concerning Salvage recipe harvesting (not really viable given what information we can gather from APIs for these)  
- Added Undercoins to Delves  
    Commented out Ranks 1-3 of Delve Curios (they're just too irrelevant to try to accommodate)  
- Derped sourceQuests  
    Added some symlinks to common TWW gear caches  
- Achievements completed on any character now properly count for AccountWide Achievement collection (without having to log onto the specifc character which completed the achievement)  
- 'Seasonal Start' can also follow 'Something on the Horizon'  
- Added GetItemClassInfo to the WOWAPI Helper Lib.  
- [Localization] add helper  
- [Localization] Clean up migrated string  
- TWW/Azj-Kahet: Updates to Rumors and Thimble's Caches  
- Some crafted MoP Items which are properly reconized as Reagents  
- Fixed renown quest.  
- Add missing cloaks to Reno Jackson  
- Cata: Fixed objectives for Nature's Blessing.  
- Convert some ensembles to iensemble  
- Quest update.  
- Forged Weapons of Conquest achievement added  
- [Localization] Fix duplicate  
- [Localization] Add zhTW string of Riding  
- [Localization] Migrate locales/en to the DL Phase 2  
- [Localization] Migrate UNOBTAINABLE\_ITEM\_TEXTURES to the DL  
- [Localization] Migrate EXPANSION\_DATA to Default Locale  
- 11.0.5: Added DF S1 PvP Ensembles.. might need more work  
- Formating fix.  
- Removed duplicated races.  
- Confirmed some Daily Spreading the Light treasures (others likely weekly)  
- The Fall of Ossirian also takes place in Silithus, technically.  
- Severed Communications breadcrumb is not Duty Calls.  
- Thimble's Cache  
- Update some Wrath quartermasters with bubbleDown rep  
- Add AOTD Renown 22 quest  
- TWW/Azj-Kahet: Thimble's Cache, separate to The Severed Threads header and add some related HQTs  
- [Localization] Deprecated classic/locales.lua  
- Convert Trading Post to use iensemble, grab missed questids  
- Contribute warning for missing Flight paths now includes the mapID/name  
- TWW/Azj-Kahet Rumors: Updates and corrections for the next batch of rumors  
    TWW/Khaz Algar: Descriptions for some "Stay awhile" HQTs and coordinates corrections  
- Adjusted the layout of the Interface/Information page in the Settings Menu.  
- Added the 'Repeatables' information type.  
- Removed debug prints from Class Swap method  
- Fixed a missed bad Global in FlightPaths  
- Added few more Restored Coffer Keys on the Delve vendor.  
- Added back some TODO notes to FlightPath class  
- The ITEM\_UPGRADE\_DISCOUNT\_TOOLTIP\_ACCOUNT\_WIDE constant doesn't exist in classic, so let's just bake in that value.  
- [Localization] Fix syntax  
- Retail: Added a bunch of Classes to use the new simple collectible swap (Note: this will not currently trigger in Classic since it does not yet handle the 'OnSettingsNeedsRefresh' event)  
- Retail: app:RefreshData no longer manually called from other logic. Instead a new event is used to indicate that a data refresh is expected  
    Retail: Fixed the Skip Refresh toggle from always forcing a refresh when none was required  
- Merge pull request #1803 from NORPG/master  
    [Localization] Migrate locale/en to Default Locale Phase 1  
- Added some simple methods to allow swapping a ClassDefinition field function. This allows us to perform one-time swaps of functionality which currently is executed for every field check of every object of that type (i.e. main use is 'collectible' currently)  
- [Localization] Migrate locale/en to Default Locale Phase 1  
- Classic: Fixed an oopsie.  
- Moved PrintGroup to lib/Print.lua  
- Moved PrintMemoryUsage to lib/Print.lua.  
- Moved IsComplete to base.lua.  
- Removed the unused GetStateIcon function.  
- Moved or removed a bunch of unused declarations in AllTheThings.lua. (moved to be closer to whatever is using it if its only referenced once, so that it can be split up easier)  
- Deleted GetCategoryIDs and refactoed code to reference the api function.  
- Moved GetIconFromProviders / GetNameFromProviders to base.lua.  
- Moved the Clickable ATT Chat Link Handling to base.lua.  
- Moved Linkify and SearchLink to base.lua.  
    Retail: Refactored app.popups to be a local variable instead to match the Classic version.  
- Zekvir HQT  
- Deleted all references to ATTClassicAuctionData.  
- Deleted all references to ATTClassicSettings.  
- Deleted all references to ATTClassicSettingsPerCharacter.  
- Deleted all references to GetDataMember and SetDataMember. (AllTheThingsAD for now, we'll get rid of this eventually too)  
- Retail: Compressed the Unsorted ATT windows up one level  
- Forgot to add NYI filter in the new NYI window.  
- Moved GetSavedText to the Default Locale file.  
- Merge branch 'master' of https://github.com/DFortun81/AllTheThings  
- Added new Blackrock Depths Raid  
- Moved the icon functions to the Default Locales file. Deleted commented out localization data.  
- Revert "The Header class now uses CreateClassInstance as a fallback."  
- Moved Trial of Valor Ensemble HQTs to the backup file.  
- Trading Post timeline added.  
    Updated retail parser config.  
- Generic Object Containers now only show Trackable if actually containing another Trackable object  
- Another week of Spreading the Light adjustments/refining  
- The Header class now uses CreateClassInstance as a fallback.  
- Fix random assorted errors  
- Moved the Map Information Lib (TomTom Support section) to the Waypoint UI source file.  
- Update Allied Races.lua  
- Classic: Added IsCached and fixed UpdateRawIDs. Now using the Flight Path Lib class file.  
    Retail: Deprecated UserLocale. (it was only used by Flight Paths...)  
    Retail: Added Nighthaven, Moonglade for Druid using the Gossip frame like we have for Classic ATT Vanilla through Cataclysm already.  
    Fixed the Flight Path Lib to be more responsive to 'newFPs' for the user.  
- Classic: Fixed a bug with ForceAccountWide.  
- Reharvested ReagentsDB  
- Retail: Fill Groups now skips filling saved or locked quests when in Account mode (only Debug mode will fill under a saved/locked quest)  
- Strip Trial of Valor redundant ensemble data  
- Adjust some symlinks  
- Parser: Fixed dropping Cloaks from Ensembles due to mismatched Armor types  
    Parser: Fixed reporting of what is dropped from Ensembles due to Armor type consistency  
    Parser: No longer warning about HQTs listed directly inside object/item  
- Retail: Fixed a logic gap such that the same crafted item from multiple Recipes spanning different Professions will now all Fill, so that the respective Recipe(s) visible in the current Settings will have the applicable output  
- Retail: FillGroups async (ATT windows) now handles filling in the same sequence as FillGroups sync (search results), i.e. a Layer-based approach to filling instead of Recursive. On average, this should minimize nesting of Costs within a given ATT window  
- Added a bubbleDown filter function for criteriaID  
    'Completing the Code' uses the cost on its Criteria only, not everything  
- Fix parser issue and reparse  
- Add October 2024 Trading Post  
- included deutsch & francais locales too for keystones  
- mythic keystone is now m+ for English Locale  
- removed resonance crystal bloat from delve vendor  
- Moved the FlightPathMapIDs database table to the LocalizationDB since the data is different for each expansion.  
- Fix some Azj-Kahet quests and move a vendor to their correct file  
- Make it TWW style too when I see this.  
- WoW Anniversary not before wrath.  
- Cata: Added Lost Treasure and the Cache of the Legion to /attbounty.  
- Fixed Class tables with preprocessors.  
    Added EARTHEN\_CLASSES.  
- Cata: Shadowglen no longer shows non-Night Elves the Priestess of the Moon quest chain.  
- Unsorted window is now divided into Unsorted, NYI, HAT, HQT and Sourceless.  
    Added new commands for them.  
- Classic: Fixed the GetSpellName bug.  
- Merge pull request #1802 from NORPG/master  
    [Localization]Migrate ABBREVIATIONS to Default Locale  
- 11.0.5: Wrath Timewalking  
- Added 11.0.5 TBC Timewalking  
- Retail: Fixed ATT tooltips in lists potentially reorganizing the content of the Thing in the tooltip  
- Retail: No longer need manual source lines generation in ATT list tooltips  
    Retail: Achievement Statistics/Progress is now an information type  
- Add Dornogal Renown 20  
- Retail: 'Criteria for' is now an Information Type and uses the proper Achievement coloring based on being Account-Wide  
- [Localization]Migrate ABBREVIATIONS to Default Locale  
- Update some MoP quartermasters with bubbleDown rep  
- Retail: Fixed 'Summarize Things' (contains) to not be shown on certain Thing (NPC/Encounter) tooltips from ATT lists  
- Classic: Whoops, lol.  
- Classic: Added preprocessors to the FlightPathMapIDs table.  
- Era/SOD: TOC version to 11504.  
- Add some renown quests and fix various details  
- Fixed the alignment of the checkboxSkipAutoRefresh checkbox.  
- No longer using a deprecated UI template for checkboxes.  
    The Features/Windows section in Classic now uses both columns.  
- Fixed a bug caused by Blizzard removing APIs for Classic.  
- #1801 Converted all use of the deprecated OptionsSliderTemplate over to UISliderTemplate.  
- Cata: Updated 'Amongst the Ruins'.  
- Fix various reported errors  
- Battle on Khaz Algar wierdness kinda dealt with  
- Achraw taken away for DF achievements that no longer needed it  
- Strip old explicitly defined remix ensemble data  
- Update some WoD quartermasters with bubbleDown rep  
- They said "let's take those Skinning HQTs, but make them WORSE"  
- ...  
- Retail: Hidden Quest Triggers (HQT) are now a separate Type for collectibles! (Note that this is now the Tracking type for Objects (Treasures) and Creatures (Rares) since they use QuestIDs for tracking but are typically not actually in the Quest Log or Quest dialogs. So if you want to collect all one-time Treasures/Rares you will have to enable this option)  
    Harvestbot Repair Kit appears to be a one-time purchase, thereby worthy of being a Character Unlock  
- Tweak Tanaris transmog tabs  
- Shared Appearances is now prior to Summarize Things in tooltips (otherwise Contains looked like it included Shared Appearances)  
    Other minor logic consolidation  
- Sweep some reported errors  
- Added Default Locale strings for HQT tracking checkbox  
- Lots of little data additions which were missing that I ran into recently  
- Incomplete icon/text is meant to be blue since it is in regards to a Thing which is not related to current Collectibles  
- Earthen Heritage Armor Tabards are still NYI  
- Updated Commands interfance page.  
- Git is having a moment again, reparse  
- Merge branch 'master' of https://github.com/DFortun81/AllTheThings  
- Some achraw use revisions for Shadowlands  
- Quest is not in fact missing - was already in World Bosses, confirmed and taken out of list  
- More sneaky herb HQTs  
- Add some quest details from reset  
- TWW rares update.  
    Made one-time rares to show as such.  
    Changed HQT names to reflect weekly reputation tracker.  
    Fixed duplicated and wrong questIDs.  
- no tww is bit cringe  
- bloody tokens got removed with first prepatch and readded with launch as TWW currency  
- some czech guy, which i dont want to name, was unhappy with an empty G  
- pvp weekly is removed  
- visual clutter cleanup for orboreal distinguishments. our sources for mark of honor are questionable anyway, so showing only the latest box for marks of honor in dornogal should be the best.  
    dont need to tell the user to get to oribos to buy mark of honors for honor, when you can also buy them in the latest main city  
- Added and renamed some TWW HQTs.  
- mini note update  
- Some more spider coords  
- added delve completion header.  
    this should provide clarifity regarding how cosmectic and battle pets are obtainabled (by looting the chest(s) you get upon completing a delve).  
    previously listening a pet as battle pet implies that you get it by pet battles in the delve, similar how pets are listed in raids where you indeed have to battle them (eternal palace)  
- Hotfix for Itsy Bitsy Spider achievement  
- Retail: Summarize Things migrated to information type  
    Tooltip logic adjusted to perform the tooltip information generation if not already generated for the group (Classic needs a bit more migrations) (I'll check Classic tomorrow if tooltips have some doubled information at the moment)  
    Fixed an issue with some Artifact tooltips  
- Fix Stay Awhile description  
- Update some Legion quartermasters with bubbleDown rep  
- Add details to a Stay Awhile  
- SharedAppearances now controlled via information type (only Contains left for Retail, which looks a bit goofy right now in tooltip due to ordering)  
- Rebuilt Parser from lowercase changes  
- Retail: /att [Type]:[ID] commands can now imply the 'ID' (e.g. /att source:123 is equivalent to /att sourceID:123)  
- Garrison Buildings now use lowercase key values  
- Runeforge Powers now use lowercase key values  
- Azerite Essences now use lowercase key values  
- Flight Paths now use lowercase key values (Parser rebuild later)  
- Retail: Added CreateObject implementation for Azerite Essence  
    Retail: Added FlightPath lookup command alias 'fp'  
    Retail: Added Garrison Building lookup command alias "garrbuilding"  
- Fix a Lua error in the unexpected situation where a group provided to a window is not actually a Type and has no relevant data  
- Added lowercase versions of various camelCase cached key fields  
- Retail: Added lowercase key versions of some camelcase keys (maybe eventually we will enforce all lowercase key names...)  
- Kinda back to where we started with Upright Citizens. But at least it is in the right place?  
- Fix many tabs  
- Cata: Fixed Magister's Terrace Heroic Loot tables.  
- Parser: Fixed Achievements not automating themselves when under an automatic header  
    Parser: Now logs debug infos when achievements are skipped for automation due to being listed under 'Things'  
- Add Earthen Heritage Armor and quest details  
- New Wago files now parser error has been addressed  
- Localised naming is the best kind of naming  
- Add LFR headers for Castle Nathria, swap Zekvir icon  
- Temporary fix for Parser error when attempting to export ItemSources without an ItemID  
- Not Too Sober Citizens Brigade fixed better  
- Update Vinasia coord (npc id 4175) (#1797)  
- TWW/Azj-Kahet: Completed week 1 of Rumors. Next batch after reset.  
    Added and/or corrected some Thimble's Caches. Re-ordered the objects according to ID and marked verified ones.  
    Added known working "Itsy Bitsy Spider" coordinates  
    Correct the order of "Stay awhile" event for "Ties That Bind" quest chain  
- Removed some cases of achraw where it is no longer needed due to previous bug fixes  
- Added missing objective data to Ironforge.  
- Moved the Cooking Award timeline logic to a shared currency file.  
- Horde version of Brew of the Month Club should also be marked as repeatable on Retail  
- Reparse for retail  
- New achievementDB following the new method + changes to achievements that come from this new version  
- Merge pull request #1796 from NORPG/NORPG/issue1  
    [Localization] Fixes error in Classic  
- Ahg'zagall questID that changed in mid-beta builds come to live with wrong questID  
- Some new aniversary achievements  
- TWW/World Quests: Grub Run already exists in in AK World Quests  
- Coordinates in tooltips now prioritize listing those in the current map  
- Retail: Added a couple missing Thing Keys  
    Retail: All SourceLocations are now controlled via Information Type and no longer tacked into all search results  
- Attempting to fix Gold's event expiration issue. Also cached some globals in the Events source file to speed things up a bit.  
- Fix some retail errors and move Engineering notes  
- Migrated ArtifactRelicCompletion information type  
    Fixed coord for Earthen Iron Powder  
- Fixes NORPG/AllTheThings#1  
- Some errors  
- Whitelisted the AchievementDB folder.  
- Added a Seasonal Fish header to the Holidays folder for better visibility for seasonal fish availability.  
- No longer excluding AchievementDB in Cataclysm.  
- Moved Achievement DB files to the 00 - DB/AchievementDB folder. (Please replace the AchievementDB in /.raw/AchievementDB/ when doing updates for a given expansion.)  
- Moved the output for the consolidator to 00 - DB/AchievementDB.  
- Added the Achievement Database Consolidator tool.  
- TWW/Severed Threads: Start the work on Rumors  
    SL: Add Wingsmash as a provider instead of crs, quest triggered a "missing quest giver" report  
- Airborne Tumbler - maps  
- TWW: Added names to HQTs related to Rare creatures  
- TWW: Add names to some HQTs  
    Brineslash (rare) in Hallowfall didn't make it out of Beta  
    Clarify some descriptions, clean-up, punctuation  
