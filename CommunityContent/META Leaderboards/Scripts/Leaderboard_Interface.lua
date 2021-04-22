--[[

	Leaderboards - Interface (Client)
	1.0.1 - 2020/10/15
	by Nicholas Foreman (META) (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)

--]]

------------------------------------------------------------------------------------------------------------------------
--	EXTERNAL SCRIPTS AND APIS
------------------------------------------------------------------------------------------------------------------------
local EaseUI = require(script:GetCustomProperty("EaseUI"))

------------------------------------------------------------------------------------------------------------------------
--	OBJECTS AND REFERENCES
------------------------------------------------------------------------------------------------------------------------
local LocalPlayer = Game.GetLocalPlayer()

local EntryTemplate = script:GetCustomProperty("EntryTemplate")
local Leaderboard = script:GetCustomProperty("Leaderboard"):WaitForObject()

local LeaderboardReference = Leaderboard:GetCustomProperty("LeaderboardReference")
assert(LeaderboardReference.isAssigned, "The NetReference provided is not properly set for LeaderboardReference.")

local LeaderboardPanel = script:GetCustomProperty("LeaderboardPanel"):WaitForObject()
local Entries = script:GetCustomProperty("Entries"):WaitForObject()
local Title = script:GetCustomProperty("Title"):WaitForObject()
local UpdateTimer = script:GetCustomProperty("UpdateTimer"):WaitForObject()

------------------------------------------------------------------------------------------------------------------------
--	CONTANTS
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

local TOGGLE_BINDING = Leaderboard:GetCustomProperty("ToggleBinding")
local TOGGLE_EVENT = Leaderboard:GetCustomProperty("ToggleEvent")
local FORCE_ON_EVENT = Leaderboard:GetCustomProperty("ForceOnEvent")
local FORCE_OFF_EVENT = Leaderboard:GetCustomProperty("ForceOffEvent")

local EASE_TOGGLE = Leaderboard:GetCustomProperty("EaseToggle")
local EASE_BEGINNING = Leaderboard:GetCustomProperty("EaseBeginning")
local EASING_DURATION = Leaderboard:GetCustomProperty("EasingDuration")
local EASING_EQUATION_IN = Leaderboard:GetCustomProperty("EasingEquationIn")
local EASING_DIRECTION_IN = Leaderboard:GetCustomProperty("EasingDirectionIn")
local EASING_EQUATION_OUT = Leaderboard:GetCustomProperty("EasingEquationOut")
local EASING_DIRECTION_OUT = Leaderboard:GetCustomProperty("EasingDirectionOut")

local LEADERBOARD_TYPES = { "GLOBAL", "MONTHLY", "WEEKLY", "DAILY" }
local LEADERBOARD_STATS = { "RESOURCE", "KDR", "KILLS", "DEATHS", "DAMAGE_DEALT" }
local LEADERBOARD_PERSISTENCES = { "TOTAL", "ROUND" }
local EASE_BEGINNINGS = { "UP", "DOWN", "LEFT", "RIGHT" }

local SCORE_SUFFIXES = { "K", "M", "B", "T", "Q", "Qu", "S", "Se", "O", "N", "D" }

------------------------------------------------------------------------------------------------------------------------
--	INITIAL VARIABLES
------------------------------------------------------------------------------------------------------------------------
local currentEntries = {}
local lastUpdate = time()
local isVisible = false

local lastTask

local isCursorVisible, canCursorInteractWithUI =
	UI.IsCursorVisible(), UI.CanCursorInteractWithUI()

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

local function OnBindingReleased(player, binding)
	if(binding ~= TOGGLE_BINDING) then return end

	ForceToggle()
end

------------------------------------------------------------------------------------------------------------------------
--	GLOBAL FUNCTIONS
------------------------------------------------------------------------------------------------------------------------

function ForceOn()
	isVisible = true

	isCursorVisible, canCursorInteractWithUI =
		UI.IsCursorVisible(), UI.CanCursorInteractWithUI()

	UI.SetCursorVisible(true)
	UI.SetCanCursorInteractWithUI(true)

	LeaderboardPanel.visibility = Visibility.FORCE_ON
	if(EASE_TOGGLE) then
		local vertical = (EASE_BEGINNING == "UP") or (EASE_BEGINNING == "DOWN")
		if(vertical) then
			EaseUI.EaseY(LeaderboardPanel, 0, EASING_DURATION, EASING_EQUATION_IN, EASING_DIRECTION_IN)
		else
			EaseUI.EaseX(LeaderboardPanel, 0, EASING_DURATION, EASING_EQUATION_IN, EASING_DIRECTION_IN)
		end
	end
end

function ForceOff()
	isVisible = false

	UI.SetCursorVisible(isCursorVisible)
	UI.SetCanCursorInteractWithUI(canCursorInteractWithUI)

	isCursorVisible = nil
	canCursorInteractWithUI = nil

	if(EASE_TOGGLE) then
		if(EASE_BEGINNING == "UP") then
			EaseUI.EaseY(LeaderboardPanel, -1500, EASING_DURATION, EASING_EQUATION_OUT, EASING_DIRECTION_OUT)
		elseif(EASE_BEGINNING == "DOWN") then
			EaseUI.EaseY(LeaderboardPanel, 1500, EASING_DURATION, EASING_EQUATION_OUT, EASING_DIRECTION_OUT)
		elseif(EASE_BEGINNING == "LEFT") then
			EaseUI.EaseX(LeaderboardPanel, -1500, EASING_DURATION, EASING_EQUATION_OUT, EASING_DIRECTION_OUT)
		elseif(EASE_BEGINNING == "RIGHT") then
			EaseUI.EaseX(LeaderboardPanel, 1500, EASING_DURATION, EASING_EQUATION_OUT, EASING_DIRECTION_OUT)
		end

		local task
		task = Task.Spawn(function()
			Task.Wait(EASING_DURATION)

			if((not lastTask) or (lastTask ~= task)) then return end
			lastTask = nil

			if(not isVisible) then
				LeaderboardPanel.visibility = Visibility.FORCE_OFF
			end
		end)
		lastTask = task
	else
		LeaderboardPanel.visibility = Visibility.FORCE_OFF
	end
end

function ForceToggle()
	if(isVisible) then
		ForceOff()
	else
		ForceOn()
	end
end

function Toggle(id)
	if(id) then
		if(id ~= Leaderboard.id) then return end
	end

	ForceToggle()
end

function Update(id)
	if(not Leaderboards.HasLeaderboards()) then return end

	if(id) then
		if(id ~= Leaderboard.id) then return end
	end

	local newEntries = Leaderboards.GetLeaderboard(LeaderboardReference, LeaderboardType[LEADERBOARD_TYPE])
	if(not newEntries) then return end
	newEntries = GetFirstTenEntries(newEntries)

	local shouldUpdate = GetShouldUpdate(newEntries, currentEntries)
	if(not shouldUpdate) then return end

	ClearEntries()
	currentEntries = newEntries

	local count = #newEntries
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

		playerName.text = string.sub(entry.name, 1, 30)
		playerName:SetColor(USERNAME_COLOR)

		if(DISPLAY_AS_INTEGER) then
			playerScore.text = tostring(math.ceil(entry.score))
		else
			playerScore.text = ToSuffixString(entry.score)
		end
		playerScore:SetColor(SCORE_COLOR)

		leaderboardEntry.y = (leaderboardEntry.height * (index - 1)) + (5 * (index - 1))

		if(count >= 8) then
			leaderboardEntry.width = leaderboardEntry.width - 20
		end
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
Events.Connect("TDT_Toggle", Toggle)

if(UPDATE_ON_ROUND_END) then
	Game.roundEndEvent:Connect(Update)
end

if(#UPDATE_ON_EVENT > 0) then
	Events.Connect(UPDATE_ON_EVENT, Update)
end

if(#TOGGLE_EVENT > 0) then
	Events.Connect(TOGGLE_EVENT, ForceToggle)
end

if(#FORCE_ON_EVENT > 0) then
	Events.Connect(FORCE_ON_EVENT, ForceOn)
end

if(#FORCE_OFF_EVENT > 0) then
	Events.Connect(TOGGLE_EVENT, ForceOff)
end

if(TOGGLE_BINDING) then
	LocalPlayer.bindingReleasedEvent:Connect(OnBindingReleased)
end

LEADERBOARD_TYPE = GetProperty(LEADERBOARD_TYPE, LEADERBOARD_TYPES)
LEADERBOARD_STAT = GetProperty(LEADERBOARD_STAT, LEADERBOARD_STATS)
LEADERBOARD_PERSISTENCE = GetProperty(LEADERBOARD_PERSISTENCE, LEADERBOARD_PERSISTENCES)
EASE_BEGINNING = GetProperty(EASE_BEGINNING, EASE_BEGINNINGS)

EASING_EQUATION_IN = EaseUI.EasingEquation[EASING_EQUATION_IN]
EASING_DIRECTION_IN = EaseUI.EasingEquation[EASING_DIRECTION_IN]
EASING_EQUATION_OUT = EaseUI.EasingEquation[EASING_EQUATION_OUT]
EASING_DIRECTION_OUT = EaseUI.EasingEquation[EASING_DIRECTION_OUT]

if(UPDATE_TIMER <= 0) then
	UPDATE_TIMER = 0
end

if(LEADERBOARD_STAT == "RESOURCE") then
	Title.text = string.format("%s %s %s", LEADERBOARD_TYPE, LEADERBOARD_PERSISTENCE, string.upper(RESOURCE_NAME))
else
	Title.text = string.format("%s %s %s", LEADERBOARD_TYPE, LEADERBOARD_PERSISTENCE, LEADERBOARD_STAT)
end

if(EASE_TOGGLE) then
	if(EASE_BEGINNING == "UP") then
		LeaderboardPanel.y = -1500
	elseif(EASE_BEGINNING == "DOWN") then
		LeaderboardPanel.y = 1500
	elseif(EASE_BEGINNING == "LEFT") then
		LeaderboardPanel.x = -1500
	elseif(EASE_BEGINNING == "RIGHT") then
		LeaderboardPanel.x = 1500
	end
end

while(not Leaderboards.HasLeaderboards()) do
	Task.Wait()
end
Task.Wait()
Update()