function love.load()
	Object = require("lib.classic")

	require("src.entity")
	player = Entity(
		"assets/panda.png",
		100,
		100
	)
end

function love.update(dt)

end

function love.draw()
	player:draw()
end
