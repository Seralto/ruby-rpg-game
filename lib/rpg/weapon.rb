module Rpg
  class Weapon
    attr_reader :name, :damage

    def initialize(name:, damage:)
      @name = name
      @damage = damage
    end
  end
end
