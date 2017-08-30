require './lib/rpg/character'

module Rpg
  class Hero < Character
    def weapon
      @weapon ? @weapon.name : 'none'
    end
    
    def equip(weapon)
      @weapon = weapon
      puts "#{weapon.name} is equipped.\n\n"
    end

    private

    def add_exp(exp)
      @exp += exp
    end
  end
end
