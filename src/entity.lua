Entity = Object:extend()

function Entity:new(sprite, x, y)
	self.sprite = sprite
	self.x = x
	self.y = y
	self.x_center = love.graphics.getWidth(sprite)/2
	self.y_center = love.graphics.getHeight(sprite)/2
end

function Entity:draw()
	love.graphics.draw(self.sprite, self.x, self.y)
end
