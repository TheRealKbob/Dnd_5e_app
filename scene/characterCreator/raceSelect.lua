-----------------------------------------------------------------------------------------
--
-- Race Select
--
-----------------------------------------------------------------------------------------
local composer = require 'composer'
local scene = composer.newScene()
local widget = require 'widget'
local raceFactory = require 'com.dnd5e.race.factory'

local nextButton

function gotoNext()
  composer.hideOverlay( 'slideLeft', 400 )
end

function gotoPrevious()
  composer.hideOverlay( 'slideRight', 400 )
end

function scene:create( event )
  local sceneGroup = self.view

  local raceList = widget.newScrollView( {
    top = 0,
    left = 0,
    width = display.contentWidth,
    height = display.contentHeight,
    horizontalScrollDisabled = true,
    isBounceEnabled = false,
    backgroundColor = { 0.5, 0.5, 0.5 }
  } )

  sceneGroup:insert( raceList )

  print( raceFactory )

  local i = 1
  for k, v in pairs( raceFactory ) do
    local testCircle = display.newCircle( display.contentCenterX, i * 220, 100 )
    raceList:insert( testCircle )
    i = i + 1
  end

end

function scene:show( event )
  local phase = event.phase
  local parent = event.parent

  if( phase == 'will' ) then

  elseif( phase == 'did' ) then

  end
end

function scene:hide( event )
  local phase = event.phase
  local parent = event.parent
  if( phase == 'will' ) then

  elseif( phase == 'did' ) then
    parent:nextPanel()
  end
end

scene:addEventListener( 'create', scene )
scene:addEventListener( 'show', scene )
scene:addEventListener( 'hide', scene )

return scene
