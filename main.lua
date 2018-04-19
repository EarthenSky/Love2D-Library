-- Constant variables.
ScreenSize = {x=640, y=640}
CurrentScene = 0

function love.load()
    -- Images are loaded here.

    -- Set up the window.
    love.window.setMode(ScreenSize.x, ScreenSize.y, {resizable=false, vsync=true})
    love.window.setTitle("Love2D Template")
    love.graphics.setBackgroundColor(0, 0, 0, 255)

     -- Other Modules are loaded here.
    util = require "util"

    -- Any initialization code goes here.
    button = util.createButton({x=100, y=200}, {w=400, h=200}, "It is I, button", 0)  -- Pass zero to called function.
end

-- Only drawing and maybe come conditional statements go here.
function love.draw()
    button:draw()
end

-- No drawing, anything else goes here.  Math or physics code here.
function love.update(dt)

end
