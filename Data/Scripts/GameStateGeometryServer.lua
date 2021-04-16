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
local ABGS = require(script:GetCustomProperty("API"))
local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()

-- User exposed properties
local GEOMETRY = COMPONENT_ROOT:GetCustomProperty("Geometry"):WaitForObject()
local EXISTS_IN_LOBBY = COMPONENT_ROOT:GetCustomProperty("ExistsInLobby")
local EXISTS_IN_ROUND = COMPONENT_ROOT:GetCustomProperty("ExistsInRound")
local EXISTS_IN_ROUND_END = COMPONENT_ROOT:GetCustomProperty("ExistsInRoundEnd")

-- Check user properties
if GEOMETRY and not GEOMETRY.isNetworked then
    error("Geometry object must be networked")
end

-- nil Tick(float)
-- Handles "removing" geometry when not in the lobby game state
function Tick(deltaTime)
	if GEOMETRY then
		if ABGS.IsGameStateManagerRegistered() then
			local gameState = ABGS.GetGameState()
			local exists = false

			if gameState == ABGS.GAME_STATE_LOBBY then
				exists = EXISTS_IN_LOBBY
			elseif gameState == ABGS.GAME_STATE_ROUND then
				exists = EXISTS_IN_ROUND
			elseif gameState == ABGS.GAME_STATE_ROUND_END then
				exists = EXISTS_IN_ROUND_END
			end

			if exists then
				GEOMETRY.visibility = Visibility.INHERIT
				GEOMETRY.collision = Collision.INHERIT
			else
				GEOMETRY.visibility = Visibility.FORCE_OFF
				GEOMETRY.collision = Collision.FORCE_OFF
			end
		end
	end
end
