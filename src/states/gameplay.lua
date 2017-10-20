local World = require("classes.World")
local Player = require("classes.Player")
local baton = require("lib.baton")

local gameplay = {}

local controls = {
    left = {"key:left", "key:a", "axis:leftx-", "button:dpleft"},
    right = {"key:right", "key:d", "axis:leftx+", "button:dpright"}
}

function gameplay:enter()
    self.world = World()
    self.player = Player(self.world, 10, 10)
    self.input = baton.new(controls, love.joystick.getJoysticks()[1])
end

function gameplay:update(dt)
    self:handleInput(dt)
    self.world:update(dt)
end

function gameplay:handleInput(dt)
    self.input:update()
    local xmovement = self.input:get("right") - self.input:get("left")
    self.player:move(xmovement * dt * 500, 0)
end

function gameplay:draw()
    self.world:draw()
end

return gameplay
