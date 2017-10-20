--[[
    [Game] Untitled
    @version 0.0, YYYY-MM-DD
    @author Kevin Nilsson
--]]
local gamestate = require("lib.gamestate")
local gameplay = require("states.gameplay")
local weapon_loader = require("weapon_loader")

local weapons = {}

function love.load()
    weapon_loader.loadWeapons()

    gamestate.registerEvents()
    gamestate.switch(gameplay)
end

function love.update()
end

function love.draw()
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
end

function love.mousepressed(x, y, button)
end
