--[[
    [Game] Untitled
    @version 0.0, YYYY-MM-DD
    @author Kevin Nilsson
--]]
local weapons = {}

local function combine(a, b)
    return a .. "/" .. b
end

function love.load()
    --# Load weapons
    local files = love.filesystem.getDirectoryItems("weapons")
    print("Found " .. #files .. " weapons")
    for i, name in pairs(files) do
        local path = combine("weapons", name)
        local weapon = dofile(path)
        print(weapon.name)
    end
end

function love.update()
end

function love.draw()
end

function love.keypressed(key)
end

function love.mousepressed(x, y, button)
end
