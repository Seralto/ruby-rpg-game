require './lib/rpg'

system 'clear'

sword = Rpg::Weapon.new('Short sword', 3)

hero = Rpg::Hero.new('Odin')
puts hero
hero.equip(sword)
# puts "Weapon: #{hero.weapon}"
monster = Rpg::Enemy.new('Skull-en')

hero.attack(monster) while monster.alive?
