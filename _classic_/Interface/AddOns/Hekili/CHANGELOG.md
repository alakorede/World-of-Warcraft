# Hekili

## [v4.4.1-1.0](https://github.com/Hekili/hekili/tree/v4.4.1-1.0) (2024-10-29)
[Full Changelog](https://github.com/Hekili/hekili/compare/v4.4.0-0.9.5...v4.4.1-1.0) [Previous Releases](https://github.com/Hekili/hekili/releases)

- Update Hekili.toc  
- Remove EmbedBlizOptions call  
    Cataclysm PTR compatibility  
- Merge pull request #3791 from Burgaduk/cataclysm  
    Demo and Affli warlocks rotation cleanup  
- Demo and Affli warlocks rotation cleanup  
    Demo and Affli warlocks rotation cleanup  
- Merge pull request #3726 from Burgaduk/cataclysm  
    Affliction and Demo Warlock rotations fixing and cleanup  
- rolled back with comment  
- Affliction and Demo Warlock: Jinx talent added, AoE rotation restored, Bane of Agony restored (workaround), Synapse Springs added to rotation  
    Affliction Warlock: Jinx talent added, AoE rotation restored, Bane of Agony restored (workaround), Synapse Springs added to rotation.  
    curse\_of\_the\_elements is correctly validated considering the talent.  
    Demo warlock - rotation cleanup  
- Affliction Warlock rotatation: Jinx talent, Agony, AoE,  
    Added Affliction Warlock Debuff Jinx: Curse Elements.  
    Synapse springs added to rotation.  
    AoE processing is restored (wrong order lead to single target rotation overuse).  
    Bane of Agony processing is restored.  
- Update WarlockAfflictionBeta.simc  
    AoE rotation is fixed fot Affliction Warlock: action list for AoE (with active\_enemies>1) must be checked before singlr target, otherwise it will never been showed up as single target list will take all time  
- Merge pull request #3722 from Burgaduk/cataclysm  
    fixed curse of the elements of WarlockAffliction  
- Update WarlockAfflictionBeta.simc  
    Fixed plugin warnings realated to curse\_of\_the\_elements baff analizing  
- Merge pull request #3616 from Supernuss/cataclysm  
    Guardian Rotation Update (added cleave)  
- Guardian Rotation Update (added cleave)  
- Merge pull request #3535 from georgedeam/cataclysm  
    Update Warlock.lua  
- Update Warlock.lua  
    remove soul shard requirement for chaos bolt and shadowburn (issue #3478)  
