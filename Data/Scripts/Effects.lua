local DEATH_EFFECT_TEMPLATE = script:GetCustomProperty("DeathVFX")
local DEATH_DECAL_TEMPLATE = script:GetCustomProperty("DeathDecal")

function OnPlayerDied(player, dmg)
    local explosionObject = World.SpawnAsset(DEATH_EFFECT_TEMPLATE, { position = player:GetWorldPosition() })
    explosionObject.lifeSpan = 3
    explosionObject:Play()

    local decal = World.SpawnAsset(DEATH_DECAL_TEMPLATE, { position = player:GetWorldPosition() - Vector3.UP * 100 })
    decal.lifeSpan = 5
    decal:SetSmartProperty("Shape Index", math.random(0, 3))
end

function OnPlayerJoined(player)
    player.diedEvent:Connect(OnPlayerDied)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)