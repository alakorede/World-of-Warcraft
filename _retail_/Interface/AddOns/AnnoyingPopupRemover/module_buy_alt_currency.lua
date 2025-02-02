-- module_buy_alt_currency.lua
-- Written by KyrosKrane Sylvanblade (kyros@kyros.info)
-- Copyright (c) 2015-2024 KyrosKrane Sylvanblade
-- Licensed under the MIT License, as per the included file.
-- Addon version: v23.19.0-release

-- This file defines a module that APR can handle. Each module is one setting or popup.

-- This module hides the popup when the user tries to buy an item from a vendor and the item has an alternate currency cost.

-- Grab the WoW-defined addon folder name and storage table for our addon
local addonName, APR = ...

-- Upvalues for readability
local DebugPrint = APR.Utilities.DebugPrint
local ChatPrint = APR.Utilities.ChatPrint
local MakeString = APR.Utilities.MakeString
local L = APR.L


--#########################################
--# Module settings
--#########################################

-- Note the lowercase naming of modules. Makes it easier to pass status and settings around
local ThisModule = "buy"

-- Set up the module
APR.Modules[ThisModule] = {}
local this = APR.Modules[ThisModule]

-- the name of the variable in APR.DB and its default value
this.DBName = "HideBuyToken"
this.DBDefaultValue = APR.HIDE_DIALOG

-- The module's category determines where it goes in the options list
this.Category = "Vendoring"

-- This is the config setup for AceConfig
this.config = {
	name = L[ThisModule .. "_name"],
	desc = L[ThisModule .. "_config"],
	type = "toggle",
	set = function(info,val) APR:HandleAceSettingsChange(val, info) end,
	get = function(info) return APR.DB[this.DBName] end,
	descStyle = "inline",
	width = "full",
	order = APR.Categories[this.Category].order + APR.NextOrdering,
} -- config

-- Update the ordering for the next file to be loaded
APR.NextOrdering = APR.NextOrdering + 5

-- These are the status strings that are printed to indicate whether it's off or on
this.hidden_msg = L[ThisModule .. "_hidden"]
this.shown_msg = L[ThisModule .. "_shown"]

-- This Boolean tells us whether this module works in Classic.
this.WorksInClassic = true


-- This function causes the popup to show when triggered.
this.ShowPopup = function(printconfirm)
	DebugPrint("in APR.Modules['" .. ThisModule .. "'].ShowPopup, printconfirm is " .. MakeString(printconfirm))
	
	if APR.DB.HideBuyToken then
		-- Re-enable the dialog for selling group-looted items to a vendor while still tradable.
		StaticPopupDialogs["CONFIRM_PURCHASE_TOKEN_ITEM"] = APR.StoredDialogs["CONFIRM_PURCHASE_TOKEN_ITEM"]
		APR.StoredDialogs["CONFIRM_PURCHASE_TOKEN_ITEM"] = nil

		-- Mark that the dialog is shown.
		APR.DB.HideBuyToken = APR.SHOW_DIALOG

	-- else already shown, nothing to do.
	end

	if printconfirm then APR:PrintStatus(ThisModule) end
end -- ShowPopup()


-- This function causes the popup to be hidden when triggered.
this.HidePopup = function(printconfirm, ForceHide)
	DebugPrint("in APR.Modules['" .. ThisModule .. "'].HidePopup, printconfirm is " .. MakeString(printconfirm ) .. ", ForceHide is " .. MakeString(ForceHide))

	if not APR.DB.HideBuyToken or ForceHide then
		-- Disable the dialog for selling group-looted items to a vendor while still tradable.
		APR.StoredDialogs["CONFIRM_PURCHASE_TOKEN_ITEM"] = StaticPopupDialogs["CONFIRM_PURCHASE_TOKEN_ITEM"]
		StaticPopupDialogs["CONFIRM_PURCHASE_TOKEN_ITEM"] = nil

		-- Mark that the dialog is hidden.
		APR.DB.HideBuyToken = APR.HIDE_DIALOG

	-- else already hidden, nothing to do.
	end
	
	if printconfirm then APR:PrintStatus(ThisModule) end
end -- HidePopup()


-- This function force-buys an item pending in the merchant window if the option is enabled.
local function ForceBuyTokenItem(SPU_Name, ...)
	if APR.DB.HideBuyToken and SPU_Name == "CONFIRM_PURCHASE_TOKEN_ITEM" then
		BuyMerchantItem(MerchantFrame.itemIndex, MerchantFrame.count)
	end
end


-- Now hook the purchase function.
if not APR.IsClassic or this.WorksInClassic then
	-- This function executes before the addon has fully loaded. Use it to initialize any settings this module needs.
	this.PreloadFunc = function()
		-- Hook the function called when you try to buy an item with an alternate currency.
		-- This Blizz function calls the static dialog with the confirm option.
		hooksecurefunc("StaticPopup_Show", ForceBuyTokenItem)
	end
end -- WoW Classic check
