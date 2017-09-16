module Rpg
  class Hero < Character
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
