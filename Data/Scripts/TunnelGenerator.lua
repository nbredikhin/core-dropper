local gameSettings = World.FindObjectByName("Game Settings")
local obstacles = script:GetCustomProperties()

local defaultObstacleDistance = 4000
local overrideDistance = {
    ObstacleMiddlePipe = 2000
}
local obstaclesList = {}
for name, value in pairs(obstacles) do
    table.insert(obstaclesList, {
        prop = value,
        distance = overrideDistance[name] or defaultObstacleDistance
    })
end

local objectInstances = {}

local function SpawnRandomObstacle(randomStream, z)
    if math.random() < 0.2 then
        return 3000
    end

    local obstacle = obstaclesList[randomStream:GetInteger(1, #obstaclesList)]
    local instance = World.SpawnAsset(obstacle.prop, {
        parent = script.parent,
        position = Vector3.New(0, 0, z),
        rotation = Rotation.New(0, 0, randomStream:GetInteger(0, 3) * 90)
    })
    table.insert(objectInstances, instance)
    return obstacle.distance
end

local function DestroyTunnel()
    for i, instance in ipairs(objectInstances) do
        if Object.IsValid(instance) then
            instance:Destroy()
        end
    end
    objectInstances = {}
end

local function GenerateTunnel()
    DestroyTunnel()

    local seed = gameSettings:GetCustomProperty("Seed")
    print("Generate tunnel with seed "..tostring(seed))
    local randomStream = RandomStream.New(seed)

    local z = -4000
    local minZ = -gameSettings:GetCustomProperty("TunnelDepth") * 5000
    while z > minZ do
        local distance = SpawnRandomObstacle(randomStream, z)
        z = z - distance
    end

    -- Spawn ground
end

gameSettings.networkedPropertyChangedEvent:Connect(function (_, propertyName)
    if propertyName == "Seed" then
        GenerateTunnel()
    end
end)

GenerateTunnel()