local ScreenManager = require("libs.ScreenManager")

function love.load()
    _G.gameDebug = true
    love.graphics.setDefaultFilter("nearest", "nearest") -- Set's pixel art filter.
    ScreenManager:SwitchStates("exampleScreen")
end

function love.update(dt)
    ScreenManager:Update(dt)
end

function love.draw()
    ScreenManager:Draw()
end

function love.keypressed(key)
    ScreenManager:KeyPressed(key)
end

function love.keyreleased(key)
    ScreenManager:KeyReleased(key)
end

function love.mousepressed(x, y, button)
    ScreenManager:MousePressed(x, y, button)
end

function love.mousereleased(x, y, button)
    ScreenManager:MouseReleased(x, y, button)
end

function love.mousemoved(x, y, dx, dy, istouch)
    ScreenManager:MouseMoved(x, y, dx, dy, istouch)
end
