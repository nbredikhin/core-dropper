--[[
Reset Trigger Script
v1.0
Created by Chris

Quick script for sending a reset event, to bring
all the coins in the world back.  Assumes it
is the child of an interactable trigger volume.
]]


local trigger = script.parent

trigger.interactedEvent:Connect(function(trigger, other)
	print("Resetting coins!")
	Events.Broadcast("ResetCollectables")
end)