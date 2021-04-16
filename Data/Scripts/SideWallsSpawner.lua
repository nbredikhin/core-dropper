local PROP_SIDE_WALLS = script:GetCustomProperty("SideWalls")

for i = 1, 100 do
    World.SpawnAsset(PROP_SIDE_WALLS, {
        parent = script.parent,
        position = Vector3.New(0, 0, -(i - 1) * 5000)
    })
end