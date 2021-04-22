--[[
CoinSpin script
v1.0
Created by Chris

Just makes its parent rotate continuously.  Nice for spinning coins.
]]

local propRoot = script:GetCustomProperty("root"):WaitForObject()

propRoot:RotateContinuous(Rotation.New(0, 0, 120))