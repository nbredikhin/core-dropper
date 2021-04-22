--[[

	Leaderboards - Server
	1.0.1 - 2020/10/15
	by Nicholas Foreman (META) (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)

--]]

-- Make sure Leaderboard_DataTracker is in the hierarchy and we have access to the ResourcesToTrack global table
do local startTime = time()
	while(not (type(_G.ResourcesToTrack) == "table")) do
		Task.Wait()

		if((time() - startTime) > 3) then
			error("An instance of Leaderboard_DataTracker is not in the hierarchy")
		end
	end
end

------------------------------------------------------------------------------------------------------------------------
--	OBJECTS AND REFERENCES
------------------------------------------------------------------------------------------------------------------------
local Leaderboard = script:GetCustomProperty("Leaderboard"):WaitForObject()

local LeaderboardReference = Leaderboard:GetCustomProperty("LeaderboardReference")
assert(LeaderboardReference.isAssigned, "The NetReference provided is not properly set for LeaderboardReference.")

------------------------------------------------------------------------------------------------------------------------
--	CONSTANTS
------------------------------------------------------------------------------------------------------------------------
local LEADERBOARD_TYPE = Leaderboard:GetCustomProperty("LeaderboardType")
local LEADERBOARD_STAT = Leaderboard:GetCustomProperty("LeaderboardStat")
local LEADERBOARD_PERSISTENCE = Leaderboard:GetCustomProperty("LeaderboardPersistence")

-- Only applicable if LEADERBOARD_STAT is RESOURCE
local RESOURCE_NAME = Leaderboard:GetCustomProperty("ResourceName")

local UPDATE_ON_RESOURCE_CHANGED = Leaderboard:GetCustomProperty("UpdateOnResourceChanged")
local UPDATE_ON_PLAYER_DIED = Leaderboard:GetCustomProperty("UpdateOnPlayerDied")
local UPDATE_ON_DAMAGE_DEALT = Leaderboard:GetCustomProperty("UpdateOnDamageDealt")
local UPDATE_ON_EVENT = Leaderboard:GetCustomProperty("UpdateOnEvent")

local LEADERBOARD_TYPES = { "GLOBAL", "MONTHLY", "WEEKLY", "DAILY" }
local LEADERBOARD_STATS = { "RESOURCE", "KDR", "KILLS", "DEATHS", "DAMAGE_DEALT" }
local LEADERBOARD_PERSISTENCES = { "TOTAL", "ROUND" }

------------------------------------------------------------------------------------------------------------------------
--	LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

local function OnUpdate(leaderboardPersistence, leaderboardStat, player, score, resourceName)
	if(leaderboardPersistence ~= LEADERBOARD_PERSISTENCE) then return end

	if(leaderboardStat == "KDR") then
		if(LEADERBOARD_STAT ~= "KDR") then return end

		Leaderboards.SubmitPlayerScore(LeaderboardReference, player, score)

		if(UPDATE_ON_PLAYER_DIED) then
			Update()
		end
	elseif(leaderboardStat == "KILLS") then
		if(LEADERBOARD_STAT ~= "KILLS") then return end

		Leaderboards.SubmitPlayerScore(LeaderboardReference, player, score)

		if(UPDATE_ON_PLAYER_DIED) then
			Update()
		end
	elseif(leaderboardStat == "DEATHS") then
		if(LEADERBOARD_STAT ~= "DEATHS") then return end

		Leaderboards.SubmitPlayerScore(LeaderboardReference, player, score)

		if(UPDATE_ON_PLAYER_DIED) then
			Update()
		end
	elseif(leaderboardStat == "DAMAGE_DEALT") then
		if(LEADERBOARD_STAT ~= "DAMAGE_DEALT") then return end

		Leaderboards.SubmitPlayerScore(LeaderboardReference, player, score)

		if(UPDATE_ON_DAMAGE_DEALT) then
			Update()
		end
	else
		if(LEADERBOARD_STAT ~= "RESOURCE") then return end
		if(#RESOURCE_NAME <= 0) then return end
		if(resourceName ~= RESOURCE_NAME) then return end

		Leaderboards.SubmitPlayerScore(LeaderboardReference, player, score)

		if(UPDATE_ON_RESOURCE_CHANGED) then
			Update()
		end
	end
end

local function GetProperty(value, options)
	value = string.upper(value)

	for _, option in pairs(options) do
		if(value == option) then return value end
	end

	return options[1]
end

function Update()
	while(Events.BroadcastToAllPlayers("LDT_Update", Leaderboard.id) == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT) do
		Task.Wait()
	end
end

LEADERBOARD_TYPE = GetProperty(LEADERBOARD_TYPE, LEADERBOARD_TYPES)
LEADERBOARD_STAT = GetProperty(LEADERBOARD_STAT, LEADERBOARD_STATS)
LEADERBOARD_PERSISTENCE = GetProperty(LEADERBOARD_PERSISTENCE, LEADERBOARD_PERSISTENCES)

if((LEADERBOARD_STAT == "RESOURCE") and (#RESOURCE_NAME > 0)) then
	_G.ResourcesToTrack[RESOURCE_NAME] = true
end

Events.Connect("LDT_Update", OnUpdate)

if(#UPDATE_ON_EVENT > 0) then
	Events.Connect(UPDATE_ON_EVENT, Update)
end