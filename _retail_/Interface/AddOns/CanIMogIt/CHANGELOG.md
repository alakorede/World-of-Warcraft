# Can I Mog It?

## [11.0.5v2.5.2](https://github.com/TorelTwiddler/CanIMogIt/tree/11.0.5v2.5.2) (2024-11-28)
[Full Changelog](https://github.com/TorelTwiddler/CanIMogIt/compare/11.0.5v2.5.1...11.0.5v2.5.2) [Previous Releases](https://github.com/TorelTwiddler/CanIMogIt/releases)

- #372 Fix loot frame not updating  
- #373 Fix ElvUI and Cargbags overlay updates  
- #356 Simplify Smart Event code  
    It's now much simpler, as it now only delays events  
    to the next frame. It no longer tries to prevent  
    duplicate events from being run. Delaying them  
    is good enough, and will take care of any slowdowns.  
- Revert "#356 Stabilize Smart Event code"  
- #356 Stabilize Smart Event code  
    There appear to be instances when the smart events aren't  
    updating everything they should be. Before this change,  
    the code would only add events to the smart list if the  
    exact same arguments weren't already in there.  
    This change makes it so it will always add things to the  
    smart list, but only run each event once per frame. This  
    would mean if there is a large delay, it may be a delay,  
    but it would have to be quite long. Otherwise, it should  
    sort itself out quickly.  
- Enable Auto-Changelog  
