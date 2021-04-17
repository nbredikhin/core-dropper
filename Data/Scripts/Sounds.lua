local SOUND_DEATH = script:GetCustomProperty("DeathSound")

local function HandleDeath(player)
    local sound = World.SpawnAsset(SOUND_DEATH, {
        position = player:GetWorldPosition()
    })
    sound:Play()
    sound.lifeSpan = 2
end

local function HandlePlayerJoin(player)
    player.diedEvent:Connect(HandleDeath)
end

Game.playerJoinedEvent:Connect(HandlePlayerJoin)