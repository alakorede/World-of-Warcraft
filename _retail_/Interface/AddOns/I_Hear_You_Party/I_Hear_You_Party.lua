local sounds = {
	["CHAT_MSG_PARTY"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
	["CHAT_MSG_PARTY_LEADER"] = "Interface\\AddOns\\I_Hear_You_All\\party.ogg", MASTER,
	
local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_PARTY")
f:RegisterEvent("CHAT_MSG_PARTY_GUIDE")
f:SetScript("OnEvent", function(self, event)
	PlaySoundFile(sounds[event])
end)
