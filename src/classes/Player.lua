-- luacheck: globals love
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
    Entity.new(self, world, x, y, 64, 64)

    self.jumps = 0
end

--[[
    Updates stuff for the player
--]]
function Player:update(dt)
    Entity.update(self, dt)

    if self.y + self.height > love.graphics.getHeight() then
        self.y = love.graphics.getHeight() - self.height
        self.yvel = 0
        self.jumps = 2
    end
end

function Player:jump()
    if self.jumps > 0 then
        self.yvel = -800
        self.jumps = self.jumps - 1
    end
end

--[[
    Draws the player
--]]
function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

return Player
