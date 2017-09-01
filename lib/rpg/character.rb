module Rpg
  class Character
    attr_reader :name
    attr_accessor :hp, :strength, :exp

    def initialize(name:, hp: 30, strength: 6, exp: 0)
      @name = name
      @hp = hp
      @strength = strength
      @exp = exp
    end

    def attack(target)
      round_damage = damage
      return puts "Miss!\n\n" if round_damage.zero?
      apply_damage(round_damage, target)
      target_dead(target) unless target.alive?
    end

    def alive?
      @hp > 0
    end

    def to_s
      "[#{@name}]\n HP: #{@hp}\n Strength: #{@strength}\n Exp: #{@exp}\n\n"
    end

    private

    def damage
      round_strength = Random.rand(strength)
      round_damage = @weapon ? @weapon.damage + round_strength : round_strength
      puts "#{@name} attack was #{round_damage}"
      round_damage
    end

    def apply_damage(damage, target)
      target.hp -= damage
      puts "#{target.name} HP is #{target.hp}\n\n" if target.hp > 0
    end

    def target_dead(target)
      puts "#{target.name} is dead\n\n"
      add_exp(target.exp) if is_a?(Hero)
    end
  end
end
