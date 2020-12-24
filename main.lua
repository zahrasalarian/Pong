
WINDOW_WIDTH = 960
WINDOW_HEIGHT = 480



function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
        fullscreen = false,
        resizable = false,
        vsync = true
    })
end


function love.draw()
    love.graphics.printf(
        'Hi Pong!',         
        0,                      
        WINDOW_HEIGHT / 2 - 6,  
        WINDOW_WIDTH,
        'center')             
end
