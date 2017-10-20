--[[
    [Class] Player
    @version 1.0, 2017-10-20
    @author Kevin Nilsson
--]]
local Entity = require("classes.Entity")
local Player = Entity:extend()

--[[
    Initiates a new player

    @param int x, "The x coordinate"
    @param int y, "The y coordinate"
--]]
function Player:new(x, y)
    Entity.super.new(self, x, y)
end

--[[
    Draws the player
--]]
function Player:draw()
end

--[[
    Updates stuff for the player
--]]
function Player:update(dt)
end

return Player
