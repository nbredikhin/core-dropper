local tunnelStartTrigger = script.parent
local tunnelEndTrigger = script:GetCustomProperty("TunnelEndTrigger"):WaitForObject()

local speedKeyBinding = "ability_extra_17"
local slowFallSpeed = 2500
local fallingWalkSpeed = 2000

local function IsPlayerFalling(player)
    return player.maxWalkSpeed == fallingWalkSpeed and not player.isDead
end

local function OnBindingPressed(player, bindingPressed)
    if not IsPlayerFalling(player) then
        return
    end

    if bindingPressed == speedKeyBinding then
        player.gravityScale = 1.9
    end
end

local function OnBindingReleased(player, bindingReleased)
    if not IsPlayerFalling(player) then
        return
    end

    if bindingReleased == speedKeyBinding then
        player.gravityScale = 0
        local velocity = player:GetVelocity()
        velocity.z = math.max(velocity.z, -slowFallSpeed)
        player:SetVelocity(velocity)
    end
end

local function OnMovementModeChanged(player, mode)
    if not IsPlayerFalling(player) then
        return
    end

    if mode == MovementMode.WALKING then
        player:Die()
    end
end

local function TogglePlayerFalling(player, state)
    if state then
        player.maxAcceleration = 10000
        player.maxWalkSpeed = fallingWalkSpeed
        player.maxJumpCount = 0
        player.isCrouchEnabled = false

        player.gravityScale = 0
        local velocity = player:GetVelocity()
        velocity.z = -slowFallSpeed
        player:SetVelocity(velocity)
    else
        player.maxAcceleration = 1800
        player.maxWalkSpeed = 640
        player.maxJumpCount = 1
        player.gravityScale = 1.9
    end
end

local function OnEnterTunnel(theTrigger, player)
    TogglePlayerFalling(player, true)
end

local function OnRoundEnd()
    for _, player in ipairs(Game.GetPlayers()) do
        TogglePlayerFalling(player, false)
    end
end

local function OnFinishTunnel(theTrigger, player)
    TogglePlayerFalling(player, false)

    print("player finished")
end

local function OnPlayerJoin(player)
    player.respawnedEvent:Connect(function (player)
        TogglePlayerFalling(player, false)
    end)

    player.movementModeChangedEvent:Connect(OnMovementModeChanged)
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
end

tunnelStartTrigger.beginOverlapEvent:Connect(OnEnterTunnel)
tunnelEndTrigger.beginOverlapEvent:Connect(OnFinishTunnel)
Game.roundEndEvent:Connect(OnRoundEnd)
Game.playerJoinedEvent:Connect(OnPlayerJoin)