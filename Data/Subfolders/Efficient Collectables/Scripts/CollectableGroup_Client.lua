--[[
Collectable Group - Client
v1.0
Created by Chris

Client-side implementation for collectable groups.

Keeps track of displaying whatever collectables it thinks
the local player should be able to see.  Occasionally
gets reports from the server about what is "officially" still
there.  Occasionally acts on them.

See the Readme for a more detailed breakdown of the architecture.
]]


local prop_Bitfields = script:GetCustomProperty("_Bitfields")
local propGroupRoot = script.parent -- script:GetCustomProperty("GroupRoot"):WaitForObject()
local propPickupEffect = propGroupRoot.parent:GetCustomProperty("PickupEffect")
local propAutoRespawnTime = script:GetCustomProperty("AutoRespawnTime")

local SERVER_DATA_PROPERTY = "Contents"

local UPDATE_DELAY = 2 -- Time between updates sent to server.  (in seconds)
local MAX_DESYNC_TIME = 4	-- How long we'll tolerate a lack of update from server.

local BF = require(prop_Bitfields)

local UPDATE_EVENT = propGroupRoot:GetReference().id .. ":UpdateContents"
local INIT_EVENT = propGroupRoot:GetReference().id .. ":Init"

local objList = {}
local idToTrigger = {}
local localPlayer = Game.GetLocalPlayer()
local needToReportCollections = false

local recentlyCollected = nil

local officialServerData = nil
local lastServerUpdateTime = 0
local totalCoins = 0

function Init()
	totalCoins = 0
	for k,v in pairs(propGroupRoot:GetChildren()) do
		if v ~= script then
			local propTrigger = v:GetCustomProperty("Trigger"):WaitForObject()
			objList[propTrigger] = {
				obj = v,
				active = true,
				lastServerUpdate = time(),
				lastLocalUpdate = time(),
				trigger = propTrigger,
				id = totalCoins,
			}
			idToTrigger[totalCoins] = propTrigger
			totalCoins = totalCoins + 1
			if propTrigger.isInteractable then
				propTrigger.interactedEvent:Connect(OnInteract)
		else
				propTrigger.beginOverlapEvent:Connect(OnTriggerHit)
			end
		end
	end
	recentlyCollected = BF.New(totalCoins)

	propGroupRoot.networkedPropertyChangedEvent:Connect(OnServerUpdate)
	ReliablyBroadcastToServer(INIT_EVENT, totalCoins)
	Task.Spawn(SyncServerDataTask)
end


function SendUpdateToServer()
	if needToReportCollections then
		ReliablyBroadcastToServer(UPDATE_EVENT, recentlyCollected.bits, recentlyCollected.raw)
		recentlyCollected:Reset()
		needToReportCollections = false
	end
end


function SyncServerDataTask()
	while(true) do
		-- This is lazy, and it will only send an update if there is anything
		-- new to report.
		SendUpdateToServer()

		-- Fix things to match the server, if they've been changed locally
		-- but the server hasn't validated them after MAX_DESYNC_TIME.
		FixOldData()

		Task.Wait(UPDATE_DELAY)
	end
end


function UpdateFromString()
	local stringData = propGroupRoot:GetCustomProperty(SERVER_DATA_PROPERTY)
	if stringData == nil or stringData == "" then return end

	lastServerUpdateTime = time()

	officialServerData = BF.New(totalCoins, stringData)

	for k,data in pairs(objList) do
		local isActive = officialServerData:Get(data.id)

		-- only update things that haven't changed locally lately.
		if data.lastLocalUpdate + MAX_DESYNC_TIME < time() then
			data.obj.isEnabled = isActive
			data.active = isActive
			data.lastServerUpdate = lastServerUpdateTime
		end
	end
end



function FixOldData()
	if officialServerData == nil then return end
	--print("-----Fixing data.  Server sez:", officialServerData)
	for k,data in pairs(objList) do
		--print(data.id, ":", data.isValidated, data.lastServerUpdate, (data.lastServerUpdate + MAX_DESYNC_TIME) < time())

		-- update only if the last local update is more recent than the server update, but it's
		-- been more than MAX_DESYNC_TIME and we haven't received server validation:
		if data.lastLocalUpdate > data.lastServerUpdate and data.lastLocalUpdate + MAX_DESYNC_TIME < time() then
			local isActive = officialServerData:Get(data.id)
			data.obj.isEnabled = isActive
			data.active = isActive
			data.lastLocalUpdate = time()
		end
	end
end




function OnTriggerHit(trigger, other)
	if other:IsA("Player") then
		local data = objList[trigger]
		if data ~= nil and data.active then
			data.obj.isEnabled = false
			data.active = false
			data.lastLocalUpdate = time()
			if other == localPlayer then
				-- We only count it as collected if it was us!
				recentlyCollected:Set(data.id, true)
			end
			Events.Broadcast("Collectable", other)

			if propPickupEffect ~= nil then
				World.SpawnAsset(propPickupEffect, {position = data.obj:GetWorldPosition()})
			end
			needToReportCollections = true
		end
	end
end

function OnInteract(trigger, other)
	-- todo - force animation here
	OnTriggerHit(trigger, other)
	-- Force a server update here, since interactions are (presumably) slower.
	SendUpdateToServer()
end




function OnServerUpdate(obj, property)
	if obj == propGroupRoot and property == SERVER_DATA_PROPERTY then
		UpdateFromString()
	end
end


-- Utility function to make sure that events
-- we send to the server get through.
-- (We only need this for client -> server communication
-- because all communication from the server -> client is
-- handled via networked custom properties, which are
-- automatically reliable.)
function ReliablyBroadcastToServer(EventName, ...)
	local args = {...}
	Task.Spawn(function()
		local result, error
		local count = 0
		while result ~= BroadcastEventResultCode.SUCCESS do
			result, error = Events.BroadcastToServer(EventName, table.unpack(args))
			Task.Wait(1)
			count = count + 1
			if count == 100 then
				print("Have tried over 100 times to broadcast " .. EventName .. "without success...")
			elseif count == 200 then
				print("200 attempts for " .. EventName .. " ... aborting.")
				return
			end
		end
	end)
end


-- Force an update at start.
UpdateFromString()

Init()

