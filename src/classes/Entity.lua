--[[
    [Class] Entity
    @version 1.0, 2017-10-20
    @author Kevin Nilsson
--]]
local Object = require("lib.classic")
local Entity = Object:extend()

--[[
    Initiates a new entity

    @param object world, "The world object"
    @param int        x, "The x coordinate of the entity"
    @param int        y  "The y coordinate of the entity"
--]]
function Entity:new(world, x, y, width, height)
    self.world = world
    self.x = x or 0
    self.y = y or 0
    self.width = width or 64
    self.height = height or 64
    self.xvel = 0
    self.yvel = 0
    self.gravity = 2500
    world:addEntity(self)
end

function Entity:move(dx, dy)
    self.x = self.x + dx
    self.y = self.y + dy
end

-- override this
function Entity:update(dt)
    self.yvel = self.yvel + self.gravity * dt

    self.x = self.x + self.xvel * dt
    self.y = self.y + self.yvel * dt
end

-- override this
function Entity:draw()
end

return Entity
