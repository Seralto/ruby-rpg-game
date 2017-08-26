module Game
  # Hero class
  class Hero
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
      puts "#{weapon.name} is equipped."
    end

    def atack(target)
      return puts 'Miss!' if atack_power.zero?
      puts "#{target.name} HP is #{target.hp - atack_power}"
    end

    def weapon
      @weapon ? @weapon.name : 'none'
    end

    def to_s
      "[#{name}]\n HP: #{hp}\n Strength: #{strength}\n Level: #{level}\n Exp: #{exp}"
    end

    private

    def atack_power
      round_strength = Random.rand(strength)
      @weapon ? @weapon.damage + round_strength : round_strength
    end
  end
end
