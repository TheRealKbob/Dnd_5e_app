local race = require 'com.dnd5e.race'

local _M = {}

function _M:create( o )
  o = o or {}
  local this = race:create({
    type = 'Human',
    category = 'Humanoid',
    size = "Medium",
    speed = "30",
    languages = { 'Common' },
    favoredClass = { 'Any' },
    description = 'In the reckonings of most worlds, humans are the youngest of the common races, late to arrive on the world scene and short-lived in comparison to dwarves, elves, and dragons.'
  })
  return this
end

return _M
