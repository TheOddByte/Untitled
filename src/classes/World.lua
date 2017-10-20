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
    for i, other in ipairs(self.entities) do
        if other == ent then
            return
        end
    end
    table.insert(self.entities, ent)
end

function World:removeEntity(ent)
    for i, other in ipairs(self.entities) do
        if other == ent then
            table.remove(self.entities, i)
            break
        end
    end
end

return World
