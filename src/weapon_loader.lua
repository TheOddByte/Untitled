local pathutils = require("lib.pathutils")

local function loadWeapons()
    --# Load weapons
    local files = love.filesystem.getDirectoryItems("weapons")
    print("Found " .. #files .. " weapons")
    for _, name in ipairs(files) do
        local path = pathutils.combine("weapons", name)
        local weapon = love.filesystem.load(path)()
        print(weapon.name)
    end
end

return {
    loadWeapons = loadWeapons
}
