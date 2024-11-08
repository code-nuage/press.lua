# press.lua
## Whats is press.lua?
press.lua is a simple Lua library to create buttons for Android LÖVE2D projects

## How to use press.lua?
Import the module in your project by typing
```lua
require("press")
```

Create a simple button with an image and a text
```lua
BUTTON = Button:new("BUTTON NAME", "path/to/image.png", x, y, width, height)
```

Use it in your LÖVE2D loops
```lua
function love.load()
  BUTTON = Button:new("BUTTON NAME", "path/to/image.png", x, y, width, height)
end

function love.update(dt)
  for _, id in pairs(love.touch.getTouches()) do
    local x, y = love.touch.getPosition(id)
  
    if BUTTON:isPressed(x, y) then
      print("Button pressed!")
    end
  end
end

function love.draw()
  BUTTON:draw("drawmode")
end
```
drawmode is the method of drawing the button, it could be `text` or `draw`
