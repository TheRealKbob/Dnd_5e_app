local race = require 'com.dnd.race'
local human = require 'com.dnd.race.human'

local _M = {}
_M[ 'blank' ] = race:create()
_M[ 'human' ] = human:create()

return _M
