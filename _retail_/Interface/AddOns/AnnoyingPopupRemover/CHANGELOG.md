# Annoying Popup Remover

## [v20.1.0-release](https://github.com/KyrosKrane/AnnoyingPopupRemover/tree/v20.1.0-release) (2024-03-22)
[Full Changelog](https://github.com/KyrosKrane/AnnoyingPopupRemover/compare/v20.0.1-release...v20.1.0-release) [Previous Releases](https://github.com/KyrosKrane/AnnoyingPopupRemover/releases)

- Fix for follower items (#43)  
    Equipping items on followers in garrison shipyards (ships), Legion mission tables, and BfA mission tables now requires right clicking the item then clicking the slot you want to use, to work around a Blizzard restriction. You can't pick up the item on your cursor, then drop it directly on the follower slot.  
    * Workaround to prevent a lua error due to Blizzard restricting a function  
    * Remove unnecessary force-loading of the Blizzard void storage module  
    * Clean up documentation and debugging info  