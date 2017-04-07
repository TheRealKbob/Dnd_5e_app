-----------------------------------------------------------------------------------------
--
-- Race Select
--
-----------------------------------------------------------------------------------------
local composer = require 'composer'
local scene = composer.newScene()
local snappingScrollView = require 'com.components.snappingScrollView'
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

  local raceList = snappingScrollView:create( {
    top = 0,
    left = 0,
    width = display.contentWidth,
    height = display.contentWidth,
    verticalScrollDisabled = true,
    -- isBounceEnabled = false,
    backgroundColor = { 0.5, 0.5, 0.5 }
  } )

  sceneGroup:insert( raceList )

  local i = 0
  for k, v in pairs( raceFactory ) do
    local testRect = display.newRect( ( display.contentWidth / 2 ) + ( display.contentWidth * i ), raceList.height / 2, raceList.width, raceList.height )
    local testNum = display.newText( ( i + 1 ), ( display.contentWidth / 2 ) + ( display.contentWidth * i ), raceList.height / 2, native.systemFont, 44 )
    testNum:setFillColor( 0, 0, 0 )
    testRect.strokeWidth = 3
    testRect:setStrokeColor( 1, 0, 0 )
    raceList:insert( testRect )
    raceList:insert( testNum )
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
