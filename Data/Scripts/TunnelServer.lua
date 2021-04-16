local seedRandomStream = RandomStream.New()
local seed = 0

local function GenerateTunnel()
    seed = seedRandomStream:GetInteger(0, 999999999)

    print("Generate new level with seed "..tostring(seed))
    World.FindObjectByName("Game Settings"):SetNetworkedCustomProperty("Seed", seed)
end

Game.roundStartEvent:Connect(GenerateTunnel)