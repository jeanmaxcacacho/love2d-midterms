Entity = Object:extend()

function Entity:new(sprite, x, y)
	self.sprite = sprite
	self.x = x
	self.y = y
	-- maybe sprites have no width????
	self.width = self.sprite:getWidth()
	self.height = self.sprite:getHeight()
	self.x_vel = 100
end

function Entity:update(dt)
	self.x = self.x + self.x_vel*dt

	if self.x > love.graphics.getWidth() - self.width then
		self.x_vel = self.x_vel * -1
	elseif self.x < 0 then
		self.x_vel = self.x_vel * -1
	end
end

function Entity:draw()
	love.graphics.draw(self.sprite, self.x, self.y)
end
