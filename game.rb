require './lib/rpg'

system 'clear'

hero = Rpg::Hero.new('Odin')
puts hero

sword = Rpg::Weapon.new('Short sword', 3)
hero.equip(sword)

monster = Rpg::Enemy.new('Skull-en', 20, 3, 10)
puts monster

while monster.alive? && hero.alive?
  hero.attack(monster)
  monster.attack(hero)
end

puts hero.alive? ? hero : monster
