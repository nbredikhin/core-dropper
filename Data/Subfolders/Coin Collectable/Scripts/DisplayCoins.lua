-- Display the player's coin amount

Task.Wait()  -- Wait a tick for players to connect
local player = Game.GetLocalPlayer()

-- Every 0.1 seconds update the coin count display
function Tick()
    Task.Wait(0.1)
    local score = player:GetResource("Manticoin")
    local displayString = player.name..": "..tostring(score or 0)
    script.parent.text = displayString
end