local gameSettings = World.FindObjectByName("Game Settings")
local tunnelEndTrigger = script.parent

tunnelEndTrigger:SetWorldPosition(Vector3.New(0, 0, -gameSettings:GetCustomProperty("TunnelDepth") * 5000))

local function OnBeginOverlap(theTrigger, player)
    print("player finished "..tostring(player.name))
end

tunnelEndTrigger.beginOverlapEvent:Connect(OnBeginOverlap)

