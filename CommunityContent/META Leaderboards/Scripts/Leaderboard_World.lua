--[[

	Leaderboards - World (Client)
	1.0.1 - 2020/10/15
	by Nicholas Foreman (META) (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)

--]]

------------------------------------------------------------------------------------------------------------------------
--	OBJECTS AND REFERENCES
------------------------------------------------------------------------------------------------------------------------
local EntryTemplate = script:GetCustomProperty("EntryTemplate")
local Leaderboard = script:GetCustomProperty("Leaderboard"):WaitForObject()

local LeaderboardReference = Leaderboard:GetCustomProperty("LeaderboardReference")
assert(LeaderboardReference.isAssigned, "The NetReference provided is not properly set for LeaderboardReference.")

local Entries = script:GetCustomProperty("Entries"):WaitForObject()
local Title = script:GetCustomProperty("Title"):WaitForObject()
local UpdateTimer = script:GetCustomProperty("UpdateTimer"):WaitForObject()

------------------------------------------------------------------------------------------------------------------------
--	CONSTANTS
------------------------------------------------------------------------------------------------------------------------
local LEADERBOARD_TYPE = Leaderboard:GetCustomProperty("LeaderboardType")
local LEADERBOARD_STAT = Leaderboard:GetCustomProperty("LeaderboardStat")
local LEADERBOARD_PERSISTENCE = Leaderboard:GetCustomProperty("LeaderboardPersistence")

-- Only applicable if LEADERBOARD_STAT is RESOURCE
local RESOURCE_NAME = Leaderboard:GetCustomProperty("ResourceName")

local DISPLAY_AS_INTEGER = Leaderboard:GetCustomProperty("DisplayAsInteger")

local UPDATE_ON_ROUND_END = Leaderboard:GetCustomProperty("UpdateOnRoundEnd")
local UPDATE_ON_EVENT = Leaderboard:GetCustomProperty("UpdateOnEvent")
local UPDATE_TIMER = math.abs(Leaderboard:GetCustomProperty("UpdateTimer"))

local FIRST_PLACE_COLOR = Leaderboard:GetCustomProperty("FirstPlaceColor")
local SECOND_PLACE_COLOR = Leaderboard:GetCustomProperty("SecondPlaceColor")
local THIRD_PLACE_COLOR = Leaderboard:GetCustomProperty("ThirdPlaceColor")
local NO_PODIUM_PLACEMENT_COLOR = Leaderboard:GetCustomProperty("NoPodiumPlacementColor")
local USERNAME_COLOR = Leaderboard:GetCustomProperty("UsernameColor")
local SCORE_COLOR = Leaderboard:GetCustomProperty("ScoreColor")

local LEADERBOARD_TYPES = { "GLOBAL", "MONTHLY", "WEEKLY", "DAILY" }
local LEADERBOARD_STATS = { "RESOURCE", "KDR", "KILLS", "DEATHS", "DAMAGE_DEALT" }
local LEADERBOARD_PERSISTENCES = { "TOTAL", "ROUND" }

local SCORE_SUFFIXES = {"K", "M", "B", "T", "Q", "Qu", "S", "Se", "O", "N", "D"}

------------------------------------------------------------------------------------------------------------------------
--	INITIAL VARIABLES
------------------------------------------------------------------------------------------------------------------------
local currentEntries = {}
local lastUpdate = time()

------------------------------------------------------------------------------------------------------------------------
--	LOCAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

local function ToSuffixString(num)
	for index = #SCORE_SUFFIXES, 1, -1 do
		local value = 10 ^ (index * 3)
		if num >= value then
			return string.format("%.1f", num / value) .. SCORE_SUFFIXES[index]
		end
	end
	return string.format("%.1f", num)
end

local function GetShouldUpdate(newEntries, currentEntries)
	if(#newEntries ~= #currentEntries) then return true end

	for index, newEntry in ipairs(newEntries) do
		if(index > 10) then break end

		local currentEntry = currentEntries[index]
		if(not currentEntry) then return true end

		if(newEntry.id ~= currentEntry.id) then
			return true
		elseif(newEntry.score ~= currentEntry.score) then
			return true
		end
	end

	return false
end

local function GetFirstTenEntries(entries)
	local newEntries = {}

	for index, entry in ipairs(entries) do
		if(index > 10) then break end

		newEntries[index] = entries[index]
	end

	return newEntries
end

local function ClearEntries()
	for _, child in pairs(Entries:GetChildren()) do
		child:Destroy()
	end
end

local function GetProperty(value, options)
	value = string.upper(value)

	for _, option in pairs(options) do
		if(value == option) then return value end
	end

	return options[1]
end

------------------------------------------------------------------------------------------------------------------------
--	GLOBAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

function Update(id)
	if(not Leaderboards.HasLeaderboards()) then return end

	if(id) then
		if(id ~= Leaderboard.id) then return end
	end

	local newEntries = Leaderboards.GetLeaderboard(LeaderboardReference, LeaderboardType[LEADERBOARD_TYPE])
	if(not newEntries) then Task.Wait() return Update() end
	newEntries = GetFirstTenEntries(newEntries)

	local shouldUpdate = GetShouldUpdate(newEntries, currentEntries)
	if(not shouldUpdate) then return end

	ClearEntries()
	currentEntries = newEntries

	for index, entry in ipairs(newEntries) do
		local leaderboardEntry = World.SpawnAsset(EntryTemplate, {
			parent = Entries,
		})
		leaderboardEntry.name = entry.name

		local playerPosition, playerName, playerScore =
			leaderboardEntry:GetCustomProperty("Position"):WaitForObject(),
			leaderboardEntry:GetCustomProperty("Name"):WaitForObject(),
			leaderboardEntry:GetCustomProperty("Score"):WaitForObject()

		playerPosition.text = string.format("%002i", index)
		if(index == 1) then
			playerPosition:SetColor(FIRST_PLACE_COLOR)
		elseif(index == 2) then
			playerPosition:SetColor(SECOND_PLACE_COLOR)
		elseif(index == 3) then
			playerPosition:SetColor(THIRD_PLACE_COLOR)
		else
			playerPosition:SetColor(NO_PODIUM_PLACEMENT_COLOR)
		end

		playerName.text = string.sub(entry.name, 1, 23)
		playerName:SetColor(USERNAME_COLOR)

		if(DISPLAY_AS_INTEGER) then
			playerScore.text = tostring(math.ceil(entry.score))
		else
			playerScore.text = ToSuffixString(entry.score)
		end
		playerScore:SetColor(SCORE_COLOR)

		leaderboardEntry:SetPosition(Vector3.New(0, 0, -30 * (index - 1)))
	end
end

function Tick()
	if((time() - lastUpdate) < UPDATE_TIMER) then
		local timeLeft = math.ceil((lastUpdate + UPDATE_TIMER) - time())
		UpdateTimer.text = string.format("UPDATES IN %s SECONDS", timeLeft)
	else
		lastUpdate = time()

		Update()
	end
end

------------------------------------------------------------------------------------------------------------------------
--	INITIALIZATION
------------------------------------------------------------------------------------------------------------------------

Events.Connect("LDT_Update", Update)

if(UPDATE_ON_ROUND_END) then
	Game.roundEndEvent:Connect(Update)
end

if(#UPDATE_ON_EVENT > 0) then
	Events.Connect(UPDATE_ON_EVENT, Update)
end

LEADERBOARD_TYPE = GetProperty(LEADERBOARD_TYPE, LEADERBOARD_TYPES)
LEADERBOARD_STAT = GetProperty(LEADERBOARD_STAT, LEADERBOARD_STATS)
LEADERBOARD_PERSISTENCE = GetProperty(LEADERBOARD_PERSISTENCE, LEADERBOARD_PERSISTENCES)

if(UPDATE_TIMER <= 0) then
	UPDATE_TIMER = 0
end

if(UPDATE_TIMER <= 0) then
	UPDATE_TIMER = 0
end

if(LEADERBOARD_STAT == "RESOURCE") then
	Title.text = string.format("%s %s %s", LEADERBOARD_TYPE, LEADERBOARD_PERSISTENCE, string.upper(RESOURCE_NAME))
else
	Title.text = string.format("%s %s %s", LEADERBOARD_TYPE, LEADERBOARD_PERSISTENCE, LEADERBOARD_STAT)
end

while(not Leaderboards.HasLeaderboards()) do
	Task.Wait()
end
Task.Wait()
Update()