function love.load()
	Object = require("lib.classic")

	require("src.entity")
	player = Entity(
		"assets/panda.png",
		love.graphics.getWidth()/2,
		25
	)

	enemy = Entity(
		"assets/snake.png",
		love.graphics.getWidth()/2,
		love.graphics.getHeight() - 25
	)
end

function love.update(dt)

end

function love.draw()
	player:draw()
	enemy:draw()
end
