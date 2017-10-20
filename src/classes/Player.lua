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
function Player:new(world, x, y)
    Entity.new(self, world, x, y)
end

--[[
    Updates stuff for the player
--]]
function Player:update(dt)
    if love.keyboard.isDown("a") then
        self.x = self.x - 300 * dt
    end
    if love.keyboard.isDown("d") then
        self.x = self.x + 300 * dt
    end
    if love.keyboard.isDown("w") then
        self.y = self.y - 300 * dt
    end
    if love.keyboard.isDown("s") then
        self.y = self.y + 300 * dt
    end
end

--[[
    Draws the player
--]]
function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, 50, 50)
end

return Player
