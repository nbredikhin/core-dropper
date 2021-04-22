--[[

	Leaderboards - Data Tracker (Server)
	1.0.1 - 2020/10/15
	by Nicholas Foreman (META) (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)

--]]

------------------------------------------------------------------------------------------------------------------------
--	CONSTANTS
------------------------------------------------------------------------------------------------------------------------
local TRACK_KILLS = script:GetCustomProperty("TrackKills")
local TRACK_DEATHS = script:GetCustomProperty("TrackDeaths")
local TRACK_DAMAGE_DEALT = script:GetCustomProperty("TrackDamageDealt")
local TRACK_RESOURCES = script:GetCustomProperty("TrackResources")

------------------------------------------------------------------------------------------------------------------------
--	INITIAL VARIABLES
------------------------------------------------------------------------------------------------------------------------
local cache = {}
local inRound = false

------------------------------------------------------------------------------------------------------------------------
--	LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

local function AddToPlayerData(player, dataType, value)
	local playerData = Storage.GetPlayerData(player)

	if(type(playerData[dataType]) == "number") then
		playerData[dataType] = playerData[dataType] + value
	else
		playerData[dataType] = value
	end

	Storage.SetPlayerData(player, playerData)
	Events.Broadcast("LDT_Update", "TOTAL", string.upper(dataType), player, playerData[dataType])
end

local function UpdateKDR(player)
	local playerData = Storage.GetPlayerData(player)

	local kills, deaths = playerData.kills, playerData.deaths
	if(type(playerData.kills) ~= "number") then
		playerData.kills = 0
		kills = 0
	end
	if(type(playerData.deaths) ~= "number") then
		playerData.deaths = 0
		deaths = 0
	end

	if(deaths == 0) then
		deaths = 1
	end

	playerData.kdr = kills / deaths
	Storage.SetPlayerData(player, playerData)

	Events.Broadcast("LDT_Update", "TOTAL", "KDR", player, playerData.kdr)
end

local function UpdateRoundData(player)
	if(not cache[player]) then return end

	for dataType, value in pairs(cache[player]) do
		Events.Broadcast("LDT_Update", "ROUND", string.upper(dataType), player, value)
	end

	cache[player] = {}
end

-- Realized that most people would not want resource data (like Currency) overriden
--[[local function UpdateResource(player, resourceName, value)
	local playerData = Storage.GetPlayerData(player)

	if(type(playerData[resourceName]) == "number") then
		if(value <= playerData[resourceName]) then return end
	end

	playerData[resourceName] = value

	Storage.SetPlayerData(player, playerData)
	Events.Broadcast("LDT_Update", "TOTAL", "RESOURCE", player, value, resourceName)
end]]

local function OnRoundStart()
	inRound = true

	for player, _ in pairs(cache) do
		cache[player] = {}
	end
end

local function OnRoundEnd()
	inRound = false

	for player, _ in pairs(cache) do
		UpdateRoundData(player)
	end
end

local function GetRoundKDR(player)
	local kills, deaths = player.kills, player.deaths

	if(kills == 0) then
		kills = 1
	end
	if(deaths == 0) then
		deaths = 1
	end

	return kills / deaths
end

local function OnPlayerDied(player, damage)
	if(TRACK_DEATHS) then
		AddToPlayerData(player, "deaths", 1)
		UpdateKDR(player)

		if(inRound) then
			cache[player].deaths = player.deaths
			cache[player].kdr = GetRoundKDR(player)
		end
	end

	if(TRACK_KILLS) then
		local killer = damage.sourcePlayer
		if(Object.IsValid(killer) and killer:IsA("Player")) then
			AddToPlayerData(killer, "kills", 1)
			UpdateKDR(killer)

			if(inRound) then
				cache[killer].kills = killer.kills
				cache[killer].kdr = GetRoundKDR(killer)
			end
		end
	end
end

local function OnPlayerDamaged(player, damage)
	if(not TRACK_DAMAGE_DEALT) then return end

	local killer = damage.sourcePlayer
	if(not Object.IsValid(killer) or not killer:IsA("Player")) then return end

	AddToPlayerData(killer, "damageDealt", damage.amount)
	if(inRound) then
		cache[killer].damageDealt = (cache[killer].damageDealt or 0) + damage.amount
	end
end

local function OnPlayerResourceChanged(player, resourceName, value)
	if(not TRACK_RESOURCES) then return end
	if(not _G.ResourcesToTrack[resourceName]) then return end

	Events.Broadcast("LDT_Update", "TOTAL", "RESOURCE", player, value, resourceName)
	if(inRound) then
		cache[player][resourceName] = player:GetResource(resourceName) or 0
	end
end

local function playerJoined(player)
	cache[player] = {}

	player.diedEvent:Connect(OnPlayerDied)
	player.damagedEvent:Connect(OnPlayerDamaged)
	player.resourceChangedEvent:Connect(OnPlayerResourceChanged)
end

------------------------------------------------------------------------------------------------------------------------
--	INITIALIZATION
------------------------------------------------------------------------------------------------------------------------

Game.playerJoinedEvent:Connect(playerJoined)
Game.playerLeftEvent:Connect(UpdateRoundData)

Game.roundStartEvent:Connect(OnRoundStart)
Game.roundEndEvent:Connect(OnRoundEnd)

_G.ResourcesToTrack = {}