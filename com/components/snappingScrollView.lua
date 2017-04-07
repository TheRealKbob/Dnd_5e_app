local widget = require 'widget'

local _M = {}

local function onScroll( event )
  local phase = event.phase
  if ( phase == "began" ) then print( "Scroll view was touched" )
  elseif ( phase == "moved" ) then print( "Scroll view was moved" )
  elseif ( phase == "ended" ) then print( "Scroll view was released" )
    
  end

  -- In the event a scroll limit is reached
  if ( event.limitReached ) then
      if ( event.direction == "up" ) then print( "Reached bottom limit" )
      elseif ( event.direction == "down" ) then print( "Reached top limit" )
      elseif ( event.direction == "left" ) then print( "Reached right limit" )
      elseif ( event.direction == "right" ) then print( "Reached left limit" )
      end
  end
  return true
end

function _M:create( options )
  options[ 'listener' ] = onScroll
  local scrollView = widget.newScrollView( options )
  return scrollView
end

return _M
