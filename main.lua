som = love.audio.newSource( 'audio/Unexplored_Moon-Miguel_Johnson.mp3', 'static' )
imgPlay = love.graphics.newImage( 'img/play.png' )
imgPause = love.graphics.newImage( 'img/pause.png' )
imgStop = love.graphics.newImage( 'img/stop.png' )
volume = 1
local textoVolume = 'teste'

function love.update( dt )
    som:setVolume( volume )
    textoVolume = volume
end

function love.draw()
    love.graphics.setColor( 0, 0, 0 )
    love.graphics.print( textoVolume, 50, 30 )
    love.graphics.setColor( 255, 255, 255 )
    love.graphics.setBackgroundColor( 255, 255, 255 )
    love.graphics.draw( imgPlay, 100, 50, 0 )
    love.graphics.draw( imgPause, 200, 50, 0 )
    love.graphics.draw( imgStop, 300, 50, 0 )
end

function love.mousepressed(mx, my, button)
    if button == 1 and mx >= 100 and mx < 100 + imgPlay:getWidth() and my >= 50 and my < 50 + imgPlay:getHeight() then
        som:play()
    end
    if button == 1 and mx >= 200 and mx < 200 + imgPause:getWidth() and my >= 50 and my < 50 + imgPause:getHeight() then
        som:pause()
    end
    if button == 1 and mx >= 300 and mx < 300 + imgStop:getWidth() and my >= 50 and my < 50 + imgStop:getHeight() then
        som:stop()
    end
end

