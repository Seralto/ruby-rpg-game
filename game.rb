require './lib/rpg'

system 'clear'

hero = Rpg::Hero.new(name: 'Odin')
puts hero

sword = Rpg::Weapon.new(name: 'Short sword', damage: 3)
hero.equip(sword)

cure = Rpg::Potion.new(name: 'Elixir', healing_points: 20)

monsters_killed = 0

LUCKY_NUMBER = 1

while hero.alive?
  puts '****** To battle! ******'
  puts hero
  monster = Rpg::Enemy.new(Rpg::MONSTERS.sample)
  puts monster

  while monster.alive? && hero.alive?
    hero.attack(monster)
    monster.attack(hero) if monster.alive?
  end

  cure.heal(hero) if Random.rand(10) == LUCKY_NUMBER

  monsters_killed += 1 if hero.alive?
end

puts "#{hero.name} killed #{monsters_killed} monsters"
