local class = require 'com.dnd.class'

local _M = {}

function _M:create()
  local this = class:create({
    type = 'ranger',
    description = 'this is a ranger description'
  })

  this:setModifier( {
    add = {
      proficiencyBonus = 2,
      bonusSkills = 2
    }
  }, 1 )

  return this
end

return _M
