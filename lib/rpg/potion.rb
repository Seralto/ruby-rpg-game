module Rpg
  class Potion
    attr_reader :name, :healing_points

    def initialize(name, healing_points)
      @name = name
      @healing_points = healing_points
    end

    def heal(target)
      target.hp += @healing_points
      puts "#{target.name} drinks the #{@name} and feels better\n\n"
    end
  end
end
