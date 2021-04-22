--[[
Collectable Group - Server
v1.0
Created by Chris

Server-side implementation for collectable groups.

Keeps track of what collectables have been picked up, and informs
clients of what the "official" state is.  Also validates
pickups and awards resources.

See the Readme for a more detailed breakdown of the architecture.
]]

local prop_Bitfields = script:GetCustomProperty("_Bitfields")
local propClientRoot = script:GetCustomProperty("ClientRoot"):WaitForObject()

local propResource = script.parent:GetCustomProperty("Resource")
local propResourceAmount = script.parent:GetCustomProperty("ResourceAmount")

if propResourceAmount == nil then propResourceAmount = 1 end

local SERVER_DATA_PROPERTY = "Contents"

local BF = require(prop_Bitfields)

local collectableData = nil

function InitContents(player, itemCount)
	if collectableData ~= nil then return end
	print(string.format("Initting %s with %d items!", propClientRoot.name, itemCount))

	collectableData = BF.New(itemCount)
	collectableData:Reset(true)

	UpdateCurrentStringData()
end


function UpdateContents(player, bits, dataString)
	local collected = BF.New(bits, dataString)
	local needToUpdate = false

	for i = 0, collectableData.bits - 1 do
		if collected:Get(i) then
			if collectableData:Get(i) then
				collectableData:Set(i, false)
				if propResource ~= nil then
					player:AddResource(propResource, propResourceAmount)
				end
				needToUpdate = true
			else
				warn("!!!! Tried to collect an id that wasn't there:" .. tostring(i) .. ":" .. player.name)
			end
		end
	end
	if needToUpdate then
		UpdateCurrentStringData()
	end
end

-- Updates the custom network property with the "official" game state data.
function UpdateCurrentStringData()
	if collectableData ~= nil then
		propClientRoot:SetNetworkedCustomProperty(SERVER_DATA_PROPERTY, collectableData.raw)
	else
		warn("Somehow got to update string data without any data?")
	end
end

-- Reenables all the collectables
function ResetCollectables(group)
	if group ~= nil and group ~= propClientRoot then return end
	collectableData:Reset(true)
	UpdateCurrentStringData()
end


Events.ConnectForPlayer(propClientRoot:GetReference().id .. ":UpdateContents", UpdateContents)
Events.ConnectForPlayer(propClientRoot:GetReference().id .. ":Init", InitContents)

Events.Connect("ResetCollectables", ResetCollectables)
