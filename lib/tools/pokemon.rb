module Tools
  class Pokemon
    EFFECTS = {
      super: 2,
      neutral: 1,
      weak: 0.5
    }.freeze

    def initialize(att_weapon, def_weapon, attack, defence)
      @att = att_weapon
      @def = def_weapon
      @attack = attack
      @defence = defence
    end

    def calculate_damage
      (50 * (@attack / @defence) * effectiveness).to_i
    end

    private

    def fire_power
      @att = 'fire'
      if @def == 'water' || @def == 'fire'
        EFFECTS[:weak]
      elsif @def == 'grass'
        EFFECTS[:super]
      elsif @def == 'electric'
        EFFECTS[:neutral]
      end
    end

    def water_power
      @att = 'water'
      if @def == 'fire'
        EFFECTS[:super]
      elsif @def == 'grass' || @def == 'electric' || @def == 'water'
        EFFECTS[:weak]
      end
    end

    def electric_power
      @att = 'electric'
      if @def == 'water'
        EFFECTS[:super]
      elsif @def == 'fire' || @def == 'grass'
        EFFECTS[:neutral]
      elsif @def == 'electric'
        EFFECTS[:weak]
      end
    end

    def grass_power
      @att = 'grass'
      if @def == 'water'
        EFFECTS[:super]
      elsif @def == 'electric'
        EFFECTS[:neutral]
      elsif @def == 'fire' || @def == 'grass'
        EFFECTS[:weak]
      end
    end

    def effectiveness
      return fire_power if @att == 'fire'
      return water_power if @att == 'water'
      return electric_power if @att == 'electric'
      return grass_power if @att == 'grass'
    end
  end
end
