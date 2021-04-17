local fallSound = script:GetCustomProperty("FallSound"):WaitForObject()
local speedUpSound = script:GetCustomProperty("SpeedUpSound"):WaitForObject()
local speedLines = script:GetCustomProperty("SpeedLines"):WaitForObject()

local defaultFov = 90
local fovMultiplier = 1.25

local fov = defaultFov
local isFalling = false
local isSpeedingUp = false

speedLines.isEnabled = false

function Tick(deltaTime)
    local player = Game.GetLocalPlayer()
    local targetFov = defaultFov
    fallSound.pitch = 1
    if player.gravityScale > 1 and player.maxWalkSpeed > 650 then
        targetFov = defaultFov * fovMultiplier
        fallSound.pitch = 0.2
    end

    if not isSpeedingUp and player.gravityScale > 1 and isFalling and not player.isDead then
        isSpeedingUp = true
        speedUpSound:FadeIn(0.25)
        speedLines.isEnabled = true
    elseif isSpeedingUp and (player.gravityScale < 1 or not isFalling or player.isDead) then
        isSpeedingUp = false
        speedUpSound:FadeOut(0.25)
        speedLines.isEnabled = false
    end

    if player.maxWalkSpeed < 650 and isFalling and not player.isDead then
        isFalling = false
        fallSound:FadeOut(0.5)
    elseif player.maxWalkSpeed > 650 and (not isFalling or player.isDead) then
        isFalling = true
        fallSound:FadeIn(1)
    end

    fov = fov + (targetFov - fov) * deltaTime * 2
    player:GetDefaultCamera().fieldOfView = fov
end