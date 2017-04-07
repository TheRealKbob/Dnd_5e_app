local _M = {}

_M.__index = _M

function _M:create()
  local this = {}

  function this:add( item, amount )
    amount = amount or 1
    if( this[ item.id ] == nil ) then
      this[ item.id ] = { value = item, quantity = amount }
    else
      this[ item.id ].quantity = this[ item.id ].quantity + amount
    end
  end

  function this:remove( item, amount )
    if( this[ item.id ] ~= nil ) then
      this[ item.id ].quantity = this[ item.id ].quantity - amount
      if( this[ item.id ].quantity < 0 ) then this[ item.id ] = nil end
    end
  end

  return this
end

return _M
