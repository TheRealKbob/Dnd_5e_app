-----------------------------------------------------------------------------------------
--
-- Race Select
--
-----------------------------------------------------------------------------------------
local composer = require 'composer'
local scene = composer.newScene()
local components = require 'components'
local raceFactory = require 'com.dnd5e.race.factory'

local nextButton

-----------------------------------------------------------------------------------------
-- Functions
-----------------------------------------------------------------------------------------
local function newRaceSelector( description, image, x, y, width, height )
  local group = display.newGroup()
  local bg = display.newRect( width / 2, height / 2, width, height )
  group:insert( bg )
  local descriptionText = display.newText( group, description, width / 2, height - 100, width * 0.9, 100, native.systemFont, 24 )
  descriptionText:setFillColor( 0, 0, 0 )
  group.x = x
  group.y = y
  return group
end

local function gotoNext()
  composer.hideOverlay( 'slideLeft', 400 )
end

local function gotoPrevious()
  composer.hideOverlay( 'slideRight', 400 )
end

-----------------------------------------------------------------------------------------
-- Scene
-----------------------------------------------------------------------------------------
function scene:create( event )
  local sceneGroup = self.view

  local raceList = components.newSnappingScrollView( {
    top = 30,
    left = 0,
    width = display.viewableContentWidth,
    height = display.viewableContentHeight * 0.55,
    verticalScrollDisabled = true,
    isBounceEnabled = false,
    backgroundColor = { 0.5, 0.5, 0.5 }
  } )
  sceneGroup:insert( raceList )

  local subraceList = components.newSnappingScrollView( {
    top = ( raceList.y - raceList.height / 2 ) + raceList.height + 5,
    left = 0,
    width = display.contentWidth,
    height = display.contentHeight * 0.2,
    verticalScrollDisabled = true,
    isBounceEnabled = false,
    backgroundColor = { 0.6, 0.6, 0.6 }
  } )
  sceneGroup:insert( subraceList )

  local i = 0
  for k, v in pairs( raceFactory ) do
    local g = newRaceSelector( v.description, nil, ( i *  raceList.width ), 0, raceList.width, raceList.height )
    raceList:insert( g )
    i = i + 1
  end

  local i = 0
  for k, v in pairs( raceFactory ) do
    local g = newRaceSelector( v.description, nil, ( i *  subraceList.width ), 0, subraceList.width, subraceList.height )
    subraceList:insert( g )
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
