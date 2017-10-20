local Object = require("lib.classic")

local World = Object:extend()

function World:new()
    self.entities = {}
    self.map = {}
end

function World:update(dt)
    for _, ent in ipairs(self.entities) do
        ent:update(dt)
    end
end

function World:draw()
    for _, ent in ipairs(self.entities) do
        ent:draw()
    end
end

function World:addEntity(ent)
    table.insert(self.entities, ent)
end

return World
