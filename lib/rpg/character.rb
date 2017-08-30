module Rpg
  class Character
    attr_reader :name
    attr_accessor :hp, :strength, :level, :exp

    def initialize(name, hp: 30, strength: 6)
      @name = name
      @hp = hp
      @strength = strength
      @level = 1
      @exp = 0
    end

    def equip(weapon)
      @weapon = weapon
      puts "#{weapon.name} is equipped.\n\n"
    end

    def attack(target)
      round_damage = damage
      return puts 'Miss!' if round_damage.zero?
      apply_damage(round_damage, target)
    end

    def weapon
      @weapon ? @weapon.name : 'none'
    end

    def alive?
      hp > 0
    end

    def to_s
      "[#{name}]\n HP: #{hp}\n Strength: #{strength}\n Level: #{level}\n Exp: #{exp}\n\n"
    end

    private

    def damage
      round_strength = Random.rand(strength)
      round_round_damage = @weapon ? @weapon.damage + round_strength : round_strength
      puts "Your attack was #{round_round_damage}"
      round_round_damage
    end

    def apply_damage(damage, target)
      target.hp -= damage
      puts target.alive? ? "#{target.name} HP is #{target.hp}\n\n" : "#{target.name} is dead"
    end
  end
end
