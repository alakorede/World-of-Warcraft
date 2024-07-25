# Annoying Popup Remover

## [v21.3.0-release](https://github.com/KyrosKrane/AnnoyingPopupRemover/tree/v21.3.0-release) (2024-07-24)
[Full Changelog](https://github.com/KyrosKrane/AnnoyingPopupRemover/compare/v21.2.1-release...v21.3.0-release) [Previous Releases](https://github.com/KyrosKrane/AnnoyingPopupRemover/releases)

- Remove dependencies on Blizzard addons to speed up load time (#52)  
    * First pass at not requiring the AH to pre-load.  
    * No need to pre-load, but we do need to prevent loading on Classic.  
    * First pass at loading the followers module with the Blizzard garrison addon  
    * Add additional debugging output  
    * Redesign the void module to load dynamically with the void storage interface.  
    * Documentation updates.  