local modifier = require 'com.dnd.modifier'

local _M = {}

_M.__index = _M

function _M:create( o )
  o = o or {}
  local this = modifier:create()

  for k, v in pairs( o ) do
    this[ k ] = v
  end

  return this
end

return _M
