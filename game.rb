# Main game
module Game
  require_relative 'weapon'
  require_relative 'hero'

  system 'clear'

  sword = Weapon.new('Short sword', 3)

  hero = Hero.new('Odin')
  puts hero
  hero.equip(sword)
  # puts "Weapon: #{hero.weapon}"

  monster = Hero.new('Skull-en')
  hero.atack(monster)
end
