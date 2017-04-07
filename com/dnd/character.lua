local stats = require 'com.dnd.stats'
local classes = require 'com.dnd.class.factory'
local races = require 'com.dnd.race.factory'
local inventory = require 'com.dnd.inventory'

_M = {}

function _M:new()
  local o = {}

  o[ 'name' ] = 'Unnamed'
  o[ 'level' ] = 1
  o[ 'race' ] = races[ 'blank' ]
  o[ 'class' ] = classes[ 'blank' ]
  o[ 'attributes' ] = stats:create({
    -- Ability Scores
    strength = 1,
    dexterity = 1,
    constitution = 1,
    intelligence = 1,
    wisdom = 1,
    charisma = 1,

    -- Skills
    animalHandling = 0,
    athletics = 0,
    insight = 0,
    intimidation = 0,
    nature = 0,
    perception = 0,
    religion = 0,
    survivial = 0,

    proficiencyBonus = 0,

    -- Bonuses
    bonusSkills = 0,

  })
  o[ 'inventory' ] = inventory:create()

  function o:update()
    o[ 'attributes' ]:addModifier( o[ 'race' ]:getModifier( o.level ) )
    o[ 'attributes' ]:addModifier( o[ 'class' ]:getModifier( o.level ) )
  end

  o.update()

  print( o[ 'attributes' ]:get( 'strength' )  )

  return o
end

return _M
