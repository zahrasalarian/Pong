
-- https://github.com/Ulydev/push
push = require 'push'

WINDOW_WIDTH = 960
WINDOW_HEIGHT = 480
VIRTUAL_WIDTH = 332
VIRTUAL_HEIGHT = 143


function love.load()

    love.graphics.setDefaultFilter('nearest', 'nearest')
	retroFont = love.graphics.newFont('font.ttf', 16)
	love.graphics.setFont(retroFont)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end


function love.draw()

	push:apply('start')
    love.graphics.printf(
        'Hi Pong!',         
        0,                      
        VIRTUAL_HEIGHT / 2 - 6,  
        VIRTUAL_WIDTH,
        'center')    
	push:apply('end')
end

function love.keypressed(key)
	if key == 'escape' then
		love.event.quit()
	end
end