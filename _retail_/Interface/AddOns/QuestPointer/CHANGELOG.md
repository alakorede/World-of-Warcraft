# QuestPointer

## [v32](https://github.com/kemayo/wow-questpointer/tree/v32) (2024-08-18)
[Full Changelog](https://github.com/kemayo/wow-questpointer/compare/v31...v32) [Previous Releases](https://github.com/kemayo/wow-questpointer/releases)

- Fix tainting the item buttons on the objective tracker  
    Turns out POIButtonUtil.GetStyle taints the tracker, so I wrote around  
    needing to call that. Refactored a bit as well.  
    Fixes #6  
