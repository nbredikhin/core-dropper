local function OnPlayerJoin(player)
    player.diedEvent:Connect(function (player)
        Task.Wait(2.5)
        if Object.IsValid(player) then
            player:Respawn()
        end
    end)
end

Game.playerJoinedEvent:Connect(OnPlayerJoin)