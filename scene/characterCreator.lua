-----------------------------------------------------------------------------------------
--
-- Character Creator
--
-----------------------------------------------------------------------------------------

local composer = require 'composer'
local scene = composer.newScene()

local currentPanel = 0
local panels = { 'scene.characterCreator.raceSelect', 'scene.characterCreator.classSelect' }

function scene:nextPanel()
  currentPanel = currentPanel + 1
  composer.showOverlay( panels[ currentPanel ], { isModal = true, effect = "fromRight", time = 400 } )
end

function scene:previousPanel()
  currentPanel = currentPanel - 1
  composer.showOverlay( panels[ currentPanel ], { isModal = true, effect = "fromLeft", time = 400 } )
end

function scene:create( event )

end

function scene:show( event )
  local phase = event.phase

  if( phase == 'will' ) then

  elseif( phase == 'did' ) then
    self:nextPanel()
  end
end

scene:addEventListener( 'create', scene )
scene:addEventListener( 'show', scene )

return scene
