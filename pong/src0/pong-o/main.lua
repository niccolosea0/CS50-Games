
-- Runs when the game first starts up, only once, used to initialize the game

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720


function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false;
        vsync = false;
    })
end


-- Called after update by LOVE2D, used to draw anything to the screen, updated or otherwise

function love.draw()
    love.graphics.printf(
        "Hello Pong!",              -- text to render
        0,                          -- starting X (0 since we are going to center it based on width)
        WINDOW_HEIGHT / 2 - 6,      -- starting Y (halfay down the screen)
        WINDOW_WIDTH,               -- number of pixels to center within (entire screen here)
        "center")                   -- alignment mode, can be "center"
end
