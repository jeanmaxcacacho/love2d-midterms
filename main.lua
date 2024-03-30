function love.load()
	Object = require("lib.classic")

	-- screen shit
	horizontal_center = love.graphics.getWidth()/2

	-- preload sprites before passing into constructor
	player_sprite = love.graphics.newImage("assets/panda.png")
	enemy_sprite = love.graphics.newImage("assets/snake.png")

	-- sprite properties
	player_center = love.graphics.getWidth(player_sprite)
	enemy_center = love.graphics.getWidth(enemy_sprite)

	-- OOP is a cancer to society ngl
	require("src.entity")
	player = Entity(
		player_sprite,
		25,
		25
	)

	enemy = Entity(
		enemy_sprite,
		25,
		475
	)
end

function love.update(dt)
	player:update(dt)
	enemy:update(dt)
end

function love.draw()
	player:draw()
	enemy:draw()
end
