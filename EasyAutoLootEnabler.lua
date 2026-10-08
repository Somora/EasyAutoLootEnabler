local CreateFrame = CreateFrame
local GetCVarBool = (C_CVar and C_CVar.GetCVarBool) or GetCVarBool
local SetCVar = (C_CVar and C_CVar.SetCVar) or SetCVar
local print = print

local frame = CreateFrame("FRAME", "EasyAutoLootEnablerFrame")
frame:RegisterEvent("PLAYER_LOGIN")

frame:SetScript("OnEvent", function(self)
    if not GetCVarBool("autoLootDefault") then
        SetCVar("autoLootDefault", 1)
        print("EasyAutoLootEnabler: Auto loot has been enabled.")
    end
    
    self:UnregisterEvent("PLAYER_LOGIN")
end)
