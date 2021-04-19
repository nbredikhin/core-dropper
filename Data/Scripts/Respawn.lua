
local function OnPlayerJoin(player)
    player.diedEvent:Connect(function (player)
        Task.Wait(2.5)
        player:Respawn()
    end)
end

Game.playerJoinedEvent:Connect(OnPlayerJoin)