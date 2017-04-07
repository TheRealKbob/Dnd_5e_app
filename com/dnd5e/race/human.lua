local race = require 'com.dnd5e.race'

local _M = {}

function _M:create( o )
  o = o or {}
  local this = race:create({
    type = 'human',
    description = 'this is a human description'
  })
  return this
end

return _M
