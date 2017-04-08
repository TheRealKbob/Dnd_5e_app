local race = require 'com.dnd5e.race'
local human = require 'com.dnd5e.race.human'

local _M = {}
_M[ 'human' ] = human:create()
_M[ 'elf' ] = human:create()
_M[ 'dwarf' ] = human:create()
_M[ 'halfling' ] = human:create()

return _M
