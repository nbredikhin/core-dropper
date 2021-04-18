--[[
Copyright 2019 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

-- Internal custom properties
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local CONTAINER = script:GetCustomProperty("Container"):WaitForObject()
local PANEL = script:GetCustomProperty("Panel"):WaitForObject()
local LINE_TEMPLATE = script:GetCustomProperty("LineTemplate")

local SELF_COLOR = COMPONENT_ROOT:GetCustomProperty("SelfColor")

-- Constants
local LOCAL_PLAYER = Game.GetLocalPlayer()

-- Variables
local playerLines = {}
local headerLine = nil
local atRoundEnd = false
local offset = 6

-- nil OnPlayerJoined(Player)
-- Add a line to the scoreboard when a player joins
function OnPlayerJoined(player)
    local newLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
    newLine.y = (newLine.height + offset) * (#playerLines + 1)
    table.insert(playerLines, newLine)
    Task.Wait()
    SortPlayers()
end

-- nil OnPlayerLeft(Player)
-- Remove a line when a player leaves
function OnPlayerLeft(player)
    playerLines[#playerLines]:Destroy()
    playerLines[#playerLines] = nil
    
    if player ~= LOCAL_PLAYER then
        Task.Wait()
        SortPlayers()
    end
end

function SortPlayers()
    CONTAINER.visibility = Visibility.INHERIT
    local players = Game.GetPlayers()
    table.sort(players, ComparePlayers)

    headerLine:GetCustomProperty("Name"):WaitForObject().text = string.format("Players (%d/%d)", #players, 32)

    for i, player in ipairs(players) do
        local teamColor = Color.WHITE
        local line = playerLines[i]
        
        if player == LOCAL_PLAYER then
            teamColor = SELF_COLOR
        elseif CoreSocial.IsFriendsWithLocalPlayer(player) then
            teamColor = Color.GREEN
        end

        line:GetCustomProperty("Name"):WaitForObject().text = player.name
        line:GetCustomProperty("Name"):WaitForObject():SetColor(teamColor)
        line:GetCustomProperty("Icon"):WaitForObject():SetImage(player)
    end
end

-- bool ComparePlayers(Player, Player)
-- Comparing function that sets the sorting order
function ComparePlayers(player1, player2)
    -- Use name to ensure consistent order for players that are tied
    return string.lower(player1.name) < string.lower(player2.name)
end

-- Initialize
headerLine = World.SpawnAsset(LINE_TEMPLATE, {parent = PANEL})
headerLine:GetCustomProperty("Name"):WaitForObject().text = "Players"

Game.playerLeftEvent:Connect(OnPlayerLeft)
Game.playerJoinedEvent:Connect(OnPlayerJoined)