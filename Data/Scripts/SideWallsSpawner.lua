local gameSettings = World.FindObjectByName("Game Settings")
local PROP_SIDE_WALLS = script:GetCustomProperty("SideWalls")
local PROP_TUNNEL_END = script:GetCustomProperty("TunnelEnd")

for i = 1, gameSettings:GetCustomProperty("TunnelDepth") do
    World.SpawnAsset(PROP_SIDE_WALLS, {
        parent = script.parent,
        position = Vector3.New(0, 0, -(i - 1) * 5000)
    })
end

World.SpawnAsset(PROP_TUNNEL_END, {
    parent = script.parent,
    position = Vector3.New(0, 0, -gameSettings:GetCustomProperty("TunnelDepth") * 5000 + 5000)
})