Entity = Object:extend()

function Entity:new(sprite, x, y)
	-- sprite will be a string containing the path to the img
	self.sprite = love.graphics.newImage(sprite)
	self.x = x
	self.y = y
end

function Entity:position_set()

end

function Entity:draw()
	love.graphics.draw(self.sprite, self.x, self.y)
end
