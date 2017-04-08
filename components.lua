local widget = require 'widget'
local _M = {}

function _M.newSnappingScrollView( options )
  local function onScroll( event )
    local phase = event.phase
    if ( phase == "ended" ) then print( "Scroll view was released" )
      local x, y = event.target:getContentPosition()
      local i = math.abs( math.round( x / options.width ) )
      event.target:scrollToPosition( { x = -(options.width * i), time = 400 } )
    end
  end

  options[ 'listener' ] = onScroll
  local scrollView = widget.newScrollView( options )
  return scrollView
end

return _M
