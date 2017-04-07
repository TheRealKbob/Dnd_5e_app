local modifier = require 'com.dnd5e.modifier'

local _M = {}

_M.__index = _M

function _M:create()
  o = o or {}
  local this = modifier:create()
  for k, v in pairs( o ) do
    this[ k ] = v
  end
  this[ 'id' ] = 'race'
  return this
end

return _M
