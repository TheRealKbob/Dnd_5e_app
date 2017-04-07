-----------------------------------------------------------------------------------------
--
-- Main Menu
--
-----------------------------------------------------------------------------------------

local composer = require 'composer'
local scene = composer.newScene()

function gotoCharacterCreatorScene( event )
  composer.gotoScene( 'scene.characterCreator' )
end

function scene:create( event )
  local sceneGroup = self.view

  local characterCreatorButton = display.newText( sceneGroup, 'Character Creator', display.contentCenterX, display.contentCenterY, native.systemFont, 44 )
  characterCreatorButton:addEventListener( 'tap', gotoCharacterCreatorScene )
end

function scene:show( event )
  local phase = event.phase

  if( phase == 'will' ) then

  elseif( phase == 'did' ) then

  end
end

scene:addEventListener( 'create', scene )
scene:addEventListener( 'show', scene )

return scene
