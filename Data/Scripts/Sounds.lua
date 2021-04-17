local SOUND_DEATH = script:GetCustomProperty("DeathSound")
local SOUND_START = script:GetCustomProperty("RoundStartSound")
local SOUND_WIN = script:GetCustomProperty("WinSound")

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

local function HandleGameStateChange(_, state)
    if state == 1 then
        local sound = World.SpawnAsset(SOUND_START, {
            position = Vector3.New(0, 0, 0)
        })
        sound:Play()
        sound.lifeSpan = 4
    end
end

local function HandleVictory(player)
    local sound = World.SpawnAsset(SOUND_WIN, {
        position = player:GetWorldPosition()
    })
    sound:Play()
    sound.lifeSpan = 10
end

Game.playerJoinedEvent:Connect(HandlePlayerJoin)
Events.Connect("GameStateChanged", HandleGameStateChange)
Events.Connect("PlayerVictory", HandleVictory)