local race = require 'com.dnd.item'

local _M = {}

function _M:create( o )
  o = o or {}
  local this = race:create({
    id = 'longsword',
    category = 'weapon',
    description = 'this is a longsword description',
    weight = 3,
    type = 'melee',
    damageType = 'slashing',
    damage = '1d8',
    properties = { 'versatile' }
  })
  return this
end

return _M
