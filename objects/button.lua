Button = {}

-- pos is {x, y}, size is {w, h}, pass 0 to function to define no auto function.
function Button:new(pos, size, text, func)
    -- Add member variables here.
    selfObj = {
        m_pos = {x=pos.x, y=pos.y},
        m_size = {w=size.w, h=size.h},
        m_text = text,
        m_function = func,
        m_parameters = 0,
        m_font_size = 48
    }

    -- Init private variables here

    -- Make this a class.
    self.__index = self
    return setmetatable(selfObj, self)
end

-- For when the passed function has paraemeters.
function Button:setParameters(param_table)
    m_parameters = param_table
end

-- Set font size of text.
function Button:setFontSize(value)
    self.m_font_size = value
end

-- TODO: set text colour.
function Button:setTextColour(colour)

end

-- TODO: set background colour.
function Button:setBackgroundColour(colour)

end

-- Check if button is clicked when function is called.
function Button:isClicked()
    if love.mouse.isDown(1) == true and love.mouse.getX() > self.m_pos.x and love.mouse.getX() < self.m_pos.x + self.m_size.w and love.mouse.getY() > self.m_pos.y and love.mouse.getY() < self.m_pos.y + self.m_size.h then
        return true
    end

    -- If the parser gets here, then the button has not been pressed.
    return false
end

-- Draw a filled rectangle and the text for it.
function Button:draw()
    -- Draw rectangle.
    love.graphics.setColor(250, 250, 250, 255)
    love.graphics.rectangle( "fill", self.m_pos.x, self.m_pos.y, self.m_size.w, self.m_size.h )

    -- Draw string.
    love.graphics.setFont(love.graphics.newFont(self.m_font_size))
    local offset = {x=(self.m_size.w - love.graphics.getFont():getWidth(m_text))/2, y=0} -- Gets the width of the argument in pixels for this font.

    love.graphics.setColor(10, 10, 10, 255)
    love.graphics.print( self.m_text, self.m_pos.x, self.m_pos.y )
end

--function Button:update() print "temp, update" end

return Button
