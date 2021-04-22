local sharedStorageKey = script:GetCustomProperty("UrbanDropperStats")
local storageResources = {
    Wins = { default = 0 },
    Deaths = { default = 0 },
    Coins = { default = 0 },
}

local function AddStoredResource(player, name, amount)
    player:AddResource(name, 1)

    local data = Storage.GetSharedPlayerData(sharedStorageKey, player)
    data[name] = player:GetResource(name) or 0
    Storage.SetSharedPlayerData(sharedStorageKey, player, data)
end

Events.Connect("PlayerVictory", function (player)
    AddStoredResource(player, "Wins", 1)
end)

local function HandlePlayerDeath(player)
    AddStoredResource(player, "Deaths", 1)
end

Game.playerJoinedEvent:Connect(function(player)
    local data = Storage.GetSharedPlayerData(sharedStorageKey, player)
    for name, config in pairs(storageResources) do
        player:SetResource(name, data[name] or config.default)
        print(name, data[name])
    end

    player.diedEvent:Connect(HandlePlayerDeath)
end)