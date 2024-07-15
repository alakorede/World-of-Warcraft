# Hekili

## [v10.2.7-1.0.4](https://github.com/Hekili/hekili/tree/v10.2.7-1.0.4) (2024-07-15)
[Full Changelog](https://github.com/Hekili/hekili/compare/v10.2.7-1.0.3...v10.2.7-1.0.4) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Merge branch 'dragonflight' of https://github.com/Hekili/hekili into dragonflight  
- Arms: Fix AOE action list.  
- Destro: Tweak Immolate in multi-target.  
- Resto: Remove Primordial Wave from priority.  
- Holy: Tweak Empyreal Blaze.  
- Remove ancient changelog.  
- Prot: Tweak setting.  
- Tweak targeting diagnostic.  
- Ret: Adjust Fyr'alath usage.  
- Remove redundant interrupt filters.  
- Merge pull request #3281 from syrifgit/dragonflight  
    Fix monk talent IDs - Dampen Harm, MW + WW  
- MW - incorrect talent ID - Dampen Harm  
    all 3 specs are using the brewmaster ID, however they have separate IDs for Dampen Harm. Confirmed via tooltip addon, tested in-game.  
    Brew: 80704  
    MW: 95171  
    WW: 95172  
    Without this change, dampen harm is never recommended. Changing the ID fixes it.  
            7.   dampen\_harm ( default - 2 ) - talent [ dampen\_harm ] missing  
            Time spent on this action:  0.01ms  
- Windwalker incorrect talent ID - Dampen Harm  
    all 3 specs are using the brewmaster ID, however they have separate IDs for Dampen Harm. Confirmed via tooltip addon, tested in-game.  
    Brew: 80704  
    MW: 95171  
    WW: 95172  
    Without this change, dampen harm is never recommended. Changing the ID fixes it.  
            7.   dampen\_harm ( default - 2 ) - talent [ dampen\_harm ] missing  
            Time spent on this action:  0.01ms  