local Util = {}

-- Init requires.
local button = require "objects/button"

-- This returns a button object.
function Util.createButton(pos, size, text, func)
    return button:new(pos, size, text, func)
end

return Util
