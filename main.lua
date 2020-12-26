
-- https://github.com/Ulydev/push
push = require 'push'

WINDOW_WIDTH = 960
WINDOW_HEIGHT = 480
VIRTUAL_WIDTH = 332
VIRTUAL_HEIGHT = 143
PADDLE_SPEED = 300


function love.load()

    love.graphics.setDefaultFilter('nearest', 'nearest')
	retroFont = love.graphics.newFont('font.ttf', 16)
	love.graphics.setFont(retroFont)

    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
	
	paddle1_y = 30
	paddle2_y = VIRTUAL_HEIGHT - 50
end

function love.update(dt)
	-- player1 movement
	if love.keyboard.isDown('o') then -- moving up
		paddle2_y = paddle2_y - PADDLE_SPEED*dt
	elseif love.keyboard.isDown('l') then -- moving down
		paddle2_y = paddle2_y + PADDLE_SPEED*dt
	end
	
	-- player2 movement
	if love.keyboard.isDown('w') then -- moving up
		paddle1_y = paddle1_y - PADDLE_SPEED*dt
	elseif love.keyboard.isDown('s') then -- moving down
		paddle1_y = paddle1_y + PADDLE_SPEED*dt
	end
end

function love.draw()

	push:apply('start')
	
	-- love.graphics.clear(40, 45, 52, 255)

    love.graphics.printf(
        'Hi Pong!',         
        0,                      
        VIRTUAL_HEIGHT / 2 - 6,  
        VIRTUAL_WIDTH,
        'center')    
	-- render first paddle
	love.graphics.rectangle('fill', 10, paddle1_y, 5, 20)
	-- render second paddle
	love.graphics.rectangle('fill', VIRTUAL_WIDTH - 10, paddle2_y, 5, 20)

	push:apply('end')
end

function love.keypressed(key)
	if key == 'escape' then
		love.event.quit()
	end
end