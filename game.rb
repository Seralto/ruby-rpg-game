require './lib/rpg'

system 'clear'

hero = Rpg::Hero.new(name: 'Odin')
puts hero

sword = Rpg::Weapon.new('Short sword', 3)
hero.equip(sword)

cure = Rpg::Potion.new('Elixir', 20)

MONSTERS = [
  { name: 'Skull-in', hp: 20, strength: 5, exp: 10 },
  { name: 'Werebat', hp: 12, strength: 4, exp: 6 },
  { name: 'Deadtree', hp: 6, strength: 3, exp: 3 }
].freeze

monsters_killed = 0

while hero.alive?
  puts '****** To battle! ******'
  puts hero
  monster = Rpg::Enemy.new(MONSTERS.sample)
  puts monster

  while monster.alive? && hero.alive?
    hero.attack(monster)
    monster.attack(hero) if monster.alive?
  end

  cure.heal(hero) if Random.rand(5) == 5

  monsters_killed += 1 if hero.alive?
end

puts "#{hero.name} killed #{monsters_killed} monsters"
