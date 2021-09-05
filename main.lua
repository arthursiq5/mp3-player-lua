imgPlay = love.graphics.newImage( 'img/play.png' )
imgPause = love.graphics.newImage( 'img/pause.png' )
imgStop = love.graphics.newImage( 'img/stop.png' )
volume = 1
local textoVolume = 'teste'

function love.update( dt )

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
