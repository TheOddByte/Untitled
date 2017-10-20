--[[
    [Class] Entity
    @version 1.0, 2017-10-20
    @author Kevin Nilsson
--]]



local Object = require( "classes/Object" )
local Entity = Object:extend()



--[[
    Initiates a new entity

    @param object world, "The world object"
    @param int        x, "The x coordinate of the entity"
    @param int        y  "The y coordinate of the entity"
--]]
function Entity:new( world, x, y )
    self.world = world
    self.x     = x;
    self.y     = y;
end



return Entity
