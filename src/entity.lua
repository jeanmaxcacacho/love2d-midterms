Entity = Object:extend()

function Entity:new(sprite, x, y)
	self.sprite = sprite
	self.x = x
	self.y = y
	self.width = love.graphics.getWidth(sprite)
	self.height = love.graphics.getHeight(sprite)
end

function Entity:draw()
	love.graphics.draw(self.sprite, self.x, self.y)
end
