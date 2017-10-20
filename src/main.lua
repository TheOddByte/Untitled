--[[
    [Game] Untitled
    @version 0.0, YYYY-MM-DD
    @author Kevin Nilsson
--]]
local gamestate = require("lib.gamestate")
local gameplay = require("states.gameplay")
local pathutils = require("lib.pathutils")

local weapons = {}

function love.load()
    --# Load weapons
    local files = love.filesystem.getDirectoryItems("weapons")
    print("Found " .. #files .. " weapons")
    for i, name in pairs(files) do
        local path = pathutils.combine("weapons", name)
        local weapon = love.filesystem.load(path)()
        print(weapon.name)
    end

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
