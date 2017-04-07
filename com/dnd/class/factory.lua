local class = require 'com.dnd.class'
local ranger = require 'com.dnd.class.ranger'

local _M = {}
_M[ 'blank' ] = class:create()
_M[ 'ranger' ] = ranger:create()

return _M
