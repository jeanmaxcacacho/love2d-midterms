function love.load()
	Object = require("lib.classic")

	-- screen shit
	horizontal_center = love.graphics.getWidth()/2

	-- preload sprites before passing into constructor
	player_sprite = love.graphics.newImage("assets/panda.png")
	enemy_sprite = love.graphics.newImage("assets/snake.png")

	-- sprite properties
	player_center = player_sprite.getWidth()
	enemy_center = enemy_sprite.getWidth()

	-- OOP is a cancer to society ngl
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
