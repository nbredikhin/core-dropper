local seedRandomStream = RandomStream.New()
local seed = 0

local function GenerateTunnel()
    seed = seedRandomStream:GetInteger(0, 999999999)

    print("Generate new level with seed "..tostring(seed))
    World.FindObjectByName("Game Settings"):SetNetworkedCustomProperty("Seed", seed)
end

local function HandleGameStateChange(_, state)
    if state == 0 then
        GenerateTunnel()
    end
end

Events.Connect("GameStateChanged", HandleGameStateChange)