-- Object Base Class
Object = {

	name = "",
    x = 100,
    y = 0,
    vx = 0,
    xy = 0,
    left = 0,
    top = 0,
    height = 16,
    width = 16
}


function Object:new(o)
    o=o or {}
    setmetatable(o,self)
    self.__index = self
    return o
end

function Object:update()
    
end

-- Character Class
Character = Object:new()

function Character:new(o)

    o=o or Object:new(o)
    o.direction = 1
    o.left = 0
    o.top = 0
    o.width = 96
    o.height = 32
    o.hitboxWidth = 12
    o.hitboxHeight = 26
    o.hitboxCrouchingHeight = 16
	o.hitpoints = 100
    o.spr = 'characters'
	o.cooldown = 0
	
    setmetatable(o,self)
    self.__index = self
    return o

end

