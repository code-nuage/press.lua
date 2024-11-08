Button = {}
Button.__index = Button

function Button:new(text, image, x, y, w, h)
    local instance = setmetatable({}, Button)
    instance.text = text
    instance.image = love.graphics.newImage(image)
    instance.x = x
    instance.y = y
    instance.w = w
    instance.h = h
    return instance
end

function Button:isPressed(x, y)
    if x > self.x and y > self.y then
        if x < self.x + self.w and y < self.y + self.h then
            return true
        end
    end
end

function Button:draw(mode)
    if mode == "text" then
        love.graphics.rectangle("line", self.x, self.y, self.w, self.h)
        love.graphics.print(self.text,
        self.x + self.w / 2 - love.graphics.getFont():getWidth(self.text) / 2,
        self.y + self.h / 2 - love.graphics.getFont():getHeight(self.text) / 2)
    elseif mode == "draw" then
        love.graphics.draw(self.image, self.x, self.y, 0, self.w / self.image:getWidth(), self.h / self.image:getHeight())
    end
end
