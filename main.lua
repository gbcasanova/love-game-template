-- Libs.
local ScreenManager = require("libs.ScreenManager")
_G.push = require("libs.push")
---------------------------------------------------

function love.load()
    _G.gameDebug = true

    -- Set up screen.
    _G.gameWidth, _G.gameHeight = 1024, 576
    local windowWidth, windowHeight = _G.gameWidth, _G.gameHeight
    _G.push:setupScreen(_G.gameWidth, _G.gameHeight, windowWidth, windowHeight, {
        fullscreen = false,
        resizable  = true,
        stretched  = false
    })
    love.graphics.setDefaultFilter("nearest", "nearest") -- Set's pixel art filter.

    ScreenManager:SwitchStates("exampleScreen")
end

function love.update(dt)
    ScreenManager:Update(dt)
end

function love.draw()
    push:start()
        ScreenManager:Draw()
    push:finish()
end

function love.resize(w, h)
    push:resize(w, h)
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
