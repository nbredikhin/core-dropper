-- Internal custom properties
local ABGS = require(script:GetCustomProperty("API"))
local gameSettings = World.FindObjectByName("Game Settings")
local tunnelEndTrigger = script.parent

tunnelEndTrigger:SetWorldPosition(Vector3.New(0, 0, -gameSettings:GetCustomProperty("TunnelDepth") * 5000))

local isWinnerSelected = false

local function OnBeginOverlap(theTrigger, player)
    if isWinnerSelected then
        return
    end
    isWinnerSelected = true
    print("Player won "..tostring(player.name))
    Events.Broadcast("PlayerVictory", player)
    ABGS.SetGameState(ABGS.GAME_STATE_ROUND_END)
end

local function OnRoundStart()
    isWinnerSelected = false
end

tunnelEndTrigger.beginOverlapEvent:Connect(OnBeginOverlap)
Game.roundStartEvent:Connect(OnRoundStart)
