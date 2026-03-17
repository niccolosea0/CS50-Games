WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

push = require("push")

function love.load()
	-- Filter for text
	love.graphics.setDefaultFilter("nearest", "nearest")

	-- Get new fonts with specified pixels
	largeFont = love.graphics.newFont("font.ttf", 32)
	smallFont = love.graphics.newFont("font.ttf", 8)

	-- Player's scores
	player1Score = 0
	player2Score = 0

        -- Entire window set mode
	love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
		resizable = false,
		fullscreen = false,
		vsync = true,
	})

        -- Virtual window set mode
	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = false,
		vsync = true,
	})
end

-- Function to quit program when ESC is pressed
function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

function love.draw()
	push:start()

        -- Set background color
	love.graphics.clear(40 / 255, 45 / 255, 52 / 255, 1)

        -- Set font
	love.graphics.setFont(largeFont)

        -- Print players scores, left and right
	love.graphics.print(tostring(player1Score), VIRTUAL_WIDTH / 2 - 50, VIRTUAL_HEIGHT / 2 - 80)
	love.graphics.print(tostring(player2Score), VIRTUAL_WIDTH / 2 + 30, VIRTUAL_HEIGHT / 2 - 80)

	-- paddle 1
	love.graphics.rectangle("fill", 10, 10, 5, 20)

	-- paddle 2
	love.graphics.rectangle("fill", VIRTUAL_WIDTH - 15, VIRTUAL_HEIGHT - 30, 5, 20)

	-- ball
	love.graphics.rectangle("fill", VIRTUAL_WIDTH / 2 - 2, VIRTUAL_HEIGHT / 2 - 2, 4, 4)

	push:finish()
end
