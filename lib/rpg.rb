Dir['./lib/rpg/*.rb'].each { |file| require file }

module Rpg
  MONSTERS = [
    { name: 'Skull-in', hp: 20, strength: 5, exp: 10 },
    { name: 'Werebat', hp: 12, strength: 4, exp: 6 },
    { name: 'Deadtree', hp: 6, strength: 3, exp: 3 }
  ].freeze
end
