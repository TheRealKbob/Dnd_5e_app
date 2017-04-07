local _M = {}

_M.__index = _M

function _M:create()
  local this = {}
  this[ 'modifiers' ] = {}

  function this:getModifier( l )
    l = l or 1
    return {
      id = this.id or '',
      modifiers = this.modifiers[ l ] or {}
    }
  end

  function this:setModifier( m, l )
    l = l or 1
    this.modifiers[ l ] = m
  end

  return this
end

return _M
