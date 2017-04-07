-----------------------------------------------------------------------------------------
--
-- Race Select
--
-----------------------------------------------------------------------------------------

local composer = require 'composer'
local scene = composer.newScene()

function gotoNext()
  composer.hideOverlay( 'slideLeft', 400 )
end

function gotoPrevious()
  composer.hideOverlay( 'slideRight', 400 )
end

function scene:create( event )
  local sceneGroup = self.view
  local classSelectText = display.newText( sceneGroup, 'Class Select', display.contentCenterX, display.contentCenterY, native.systemFont, 44 )
end

function scene:show( event )
  local phase = event.phase

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
