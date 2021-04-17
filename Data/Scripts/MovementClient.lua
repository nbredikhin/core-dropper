local defaultFov = 90
local fovMultiplier = 1.25

local fov = defaultFov

function Tick(deltaTime)
    local targetFov = defaultFov
    if Game.GetLocalPlayer().gravityScale > 1 then
        targetFov = defaultFov * fovMultiplier
    end
    if Game.GetLocalPlayer().maxWalkSpeed < 650 then
        targetFov = defaultFov
    end
    fov = fov + (targetFov - fov) * deltaTime * 2
    Game.GetLocalPlayer():GetDefaultCamera().fieldOfView = fov
end