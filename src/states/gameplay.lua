local World = require("classes.World")
local Player = require("classes.Player")

local gameplay = {}

function gameplay:enter()
    self.world = World()
    Player(self.world, 10, 10)
end

function gameplay:update(dt)
    self.world:update(dt)
end

function gameplay:draw()
    self.world:draw()
end

return gameplay
