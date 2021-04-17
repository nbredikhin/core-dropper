local tunnelStartTrigger = script.parent
local tunnelEndTrigger = script:GetCustomProperty("TunnelEndTrigger"):WaitForObject()

local shiftKeyBinding = "ability_feet"

local function OnBindingPressed(player, bindingPressed)
    if bindingPressed == shiftKeyBinding then
        player:SetVelocity(Vector3.UP * 1000)
    end
end

local function OnBindingReleased(player, bindingReleased)
    if bindingReleased == shiftKeyBinding then
        player:SetVelocity(Vector3.ZERO)
    end
end

local function OnMovementModeChanged(player, mode)
    if player.maxWalkSpeed == 640 then
        return
    end

    if mode == MovementMode.WALKING then
        player:Die()
    end
end

local function TogglePlayerRagdoll(player, state)
    if state then
        player:EnableRagdoll("lower_spine", 0.4)
        player:EnableRagdoll("right_shoulder", 0.2)
        player:EnableRagdoll("left_shoulder", 0.6)
        player:EnableRagdoll("right_hip", 0.6)
        player:EnableRagdoll("left_hip", 0.6)

        player.maxAcceleration = 10000
        player.maxWalkSpeed = 2000
        player.maxJumpCount = 0
        player.isCrouchEnabled = false
        player.canMount = false
        player:SetMounted(false)
    else
        player.maxAcceleration = 1800
        player.maxWalkSpeed = 640
        player.maxJumpCount = 1
        player.canMount = true
        player:DisableRagdoll()
    end
end

local function OnEnterTunnel(theTrigger, player)
    TogglePlayerRagdoll(player, true)
end

local function OnRoundEnd()
    for _, player in ipairs(Game.GetPlayers()) do
        TogglePlayerRagdoll(player, false)
    end
end

local function OnFinishTunnel(theTrigger, player)
    TogglePlayerRagdoll(player, false)

    print("player finished")
end

local function OnPlayerJoin(player)
    player.respawnedEvent:Connect(function (player)
        TogglePlayerRagdoll(player, false)
    end)

    player.movementModeChangedEvent:Connect(OnMovementModeChanged)
end

tunnelStartTrigger.beginOverlapEvent:Connect(OnEnterTunnel)
tunnelEndTrigger.beginOverlapEvent:Connect(OnFinishTunnel)
Game.roundEndEvent:Connect(OnRoundEnd)
Game.playerJoinedEvent:Connect(OnPlayerJoin)