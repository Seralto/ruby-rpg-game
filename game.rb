require './lib/rpg'

system 'clear'

hero = Rpg::Hero.new('Odin')
puts hero

sword = Rpg::Weapon.new('Short sword', 3)
hero.equip(sword)

monsters_killed = 0

while hero.alive?
  puts '****** To battle! ******'
  puts hero
  monster = Rpg::Enemy.new('Skull-en', Random.rand(10) + 10, Random.rand(3) + 3, Random.rand(5) + 5)
  puts monster

  while monster.alive?
    hero.attack(monster)
    monster.attack(hero)
  end

  monsters_killed += 1 if hero.alive?
end

puts "#{hero.name} is dead"
puts "#{hero.name} killed #{monsters_killed} monsters"
