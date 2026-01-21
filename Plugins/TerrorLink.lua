--[[
    TerrorLink: Official BigWigs Plugin for TerrorSquadAI
    Connects BigWigs boss data directly to TerrorSquadAI's decision engine.
    Author: DarckRovert / Elnazzareno
    Version: 1.1 - Added Robust Connection Logic
]]

local name = "TerrorLink"
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..name)

local TerrorLink = BigWigs:NewModule(name)
TerrorLink.revision = 20002
TerrorLink.defaultDB = {
    enabled = true,
}

L:RegisterTranslations("enUS", function() return {
    ["TerrorLink"] = true,
    ["Integration with TerrorSquadAI"] = true,
    ["Enable/Disable TerrorSquadAI link"] = true,
} end)

L:RegisterTranslations("esES", function() return {
    ["TerrorLink"] = "TerrorLink",
    ["Integration with TerrorSquadAI"] = "Integración con TerrorSquadAI",
    ["Enable/Disable TerrorSquadAI link"] = "Activar/Desactivar enlace con TerrorSquadAI",
} end)

TerrorLink.consoleCmd = "terrorlink"
TerrorLink.consoleOptions = {
    type = "toggle",
    name = L["TerrorLink"],
    desc = L["Enable/Disable TerrorSquadAI link"],
    get = function() return TerrorLink.db.profile.enabled end,
    set = function(v) TerrorLink.db.profile.enabled = v end,
    set = function(v) TerrorLink.db.profile.enabled = v end,
}

-- Manual Slash Command Registration
SLASH_TERRORLINK1 = "/terrorlink"
SlashCmdList["TERRORLINK"] = function()
    -- Toggle enablement
    local current = TerrorLink.db.profile.enabled
    TerrorLink.db.profile.enabled = not current
    
    local status = not current and "|cFF00FF00ON|r" or "|cFFFF0000OFF|r"
    DEFAULT_CHAT_FRAME:AddMessage("TerrorLink: " .. status)
    
    -- Check connection if turned on
    if not current and TerrorLink.CheckConnection then
        TerrorLink:CheckConnection()
    end
end

-- Connection state
TerrorLink.isConnected = false

function TerrorLink:OnEnable()
    -- Hook critical BigWigs events to capture data
    self:RegisterEvent("BigWigs_Message")
    self:RegisterEvent("BigWigs_StartBar")
    self:RegisterEvent("BigWigs_StopBar")
    self:RegisterEvent("BigWigs_BossDeath")
    
    -- Try to connect immediately
    self:CheckConnection()
    
    -- If not connected, retry on ADDON_LOADED
    if not self.isConnected then
        self:RegisterEvent("ADDON_LOADED")
    end
end

function TerrorLink:ADDON_LOADED(arg1)
    if not self.isConnected then
        self:CheckConnection()
    end
end

function TerrorLink:CheckConnection()
    if getglobal("TerrorSquadAI") and TerrorSquadAI.Modules and TerrorSquadAI.Modules.BigWigsIntegration then
        self.isConnected = true
        TerrorSquadAI:Debug("|cFF00FF00TerrorLink:|r BigWigs connected successfully.")
        
        -- Unregister lazy loader event if we are done
        if self:IsEventRegistered("ADDON_LOADED") then
            self:UnregisterEvent("ADDON_LOADED")
        end
        return true
    end
    return false
end

-- Capture Messages (Critical Alerts)
function TerrorLink:BigWigs_Message(msg, color, notsure, sound, broadcastonly)
    if not self.db.profile.enabled then return end
    
    -- Lazy connect if needed
    if not self.isConnected then 
        if not self:CheckConnection() then return end
    end
    
    -- Forward critical messages to TerrorSquadAI
    if color == "Urgent" or color == "Important" or color == "Attention" or color == "Positive" then
         -- Determine message type based on color
        local msgType = "alert"
        if color == "Urgent" then msgType = "critical" end
        
        -- Send structured data
        TerrorSquadAI.Modules.BigWigsIntegration:ReceiveExternalData({
            type = "message",
            text = msg,
            priority = msgType,
            timestamp = GetTime()
        })
    end
end

-- Capture Timers (StartBar)
function TerrorLink:BigWigs_StartBar(module, text, time, icon)
    if not self.db.profile.enabled then return end
    
    if not self.isConnected then 
        if not self:CheckConnection() then return end
    end
    
    TerrorSquadAI.Modules.BigWigsIntegration:ReceiveExternalData({
        type = "timer_start",
        text = text,
        duration = time,
        icon = icon or "",
        timestamp = GetTime()
    })
end

-- Capture Timer Stops
function TerrorLink:BigWigs_StopBar(module, text)
    if not self.db.profile.enabled then return end
    
    if not self.isConnected then 
        if not self:CheckConnection() then return end
    end
    
    TerrorSquadAI.Modules.BigWigsIntegration:ReceiveExternalData({
        type = "timer_stop",
        text = text,
        timestamp = GetTime()
    })
end

-- Capture Boss Death
function TerrorLink:BigWigs_BossDeath()
    if not self.db.profile.enabled then return end
    
    if not self.isConnected then 
        if not self:CheckConnection() then return end
    end
    
    TerrorSquadAI.Modules.BigWigsIntegration:ReceiveExternalData({
        type = "boss_death",
        timestamp = GetTime()
    })
end
