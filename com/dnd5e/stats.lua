local _M = {}

_M.__index = _M

function _M:create( stats )
  local this = {
    base = {},
    modifiers = {}
  }

  for k, v in pairs( stats ) do
    this.base[ k ] = v
  end

  setmetatable( this, self )
  return this
end

function _M:addBase( id, value )
  self.base[ id ] = value
end

function _M:get( id )
  local total = self.base[ id ] or 0
  local multiplier = 0

  for k, v in pairs( self.modifiers ) do
    total = total + ( v.add[ id ] or 0 )
    multiplier = multiplier + ( v.mult[ id ] or 0 )
  end
  return total + ( total * multiplier )
end

function _M:getBase( id )
  return self.base[ id ]
end

function _M:addModifier( o )
  local id = o.id
  local mod = o.modifiers

  self.modifiers[ id ] = {
    add = mod.add or {},
    mult = mod.mult or {}
  }
end

function _M:removeModifier( o )
  local id = o.id
  self.modifiers[ id ] = nil
end

function _M:clearModifiers()
  self.modifiers = {}
end

return _M
