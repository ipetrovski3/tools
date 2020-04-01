class Resistors
  COLORS = {
    black: {
      color: 0,
      multiplier: 1,
      tolerance: 20
    },
    brown: {
      color: 1,
      multiplier: 10,
      tolerance: 1
    },
    red: {
      color: 2,
      multiplier: 100,
      tolerance: 1
    },
    orange: {
      color: 3,
      multiplier: 1000,
      tolerance: 0.05
    },
    yellow: {
      color: 4,
      multiplier: 10_000,
      tolerance: 0.02
    },
    green: {
      color: 5,
      multiplier: 100_000,
      tolerance: 0.5
    },
    blue: {
      color: 6,
      multiplier: 1_000_000,
      tolerance: 0.25
    },
    violet: {
      color: 7,
      multiplier: 10_000_000,
      tolerance: 0.10
    },
    grey: {
      color: 8,
      multiplier: 100_000_000,
      tolerance: 0.05,
    },
    white: {
      color: 9,
      multiplier: 1_000_000_000,
      tolerance: 10
    },
    gold: {
      multiplier: 0.10,
      tolerance: 5
    },
    silver: {
      multiplier: 0.01,
      tolerance: 10
    }
  }.freeze

  def initialize(input_colors)
    @color1, @color2, @multiplier, @tolerance = input_colors
  end

  def first_two_colors
    color1 + color2
  end

  def resistor_omhs
    first_two_colors * multiplier
  end

  def resistor_specs
    "Resistor value is #{resistor_omhs} ohms, with ± #{tolerance}% tolerance"
  end

  private

  def multiplier
    COLORS[@multiplier.downcase.to_sym][:multiplier]
  end

  def tolerance
    @tolerance.nil? ? 20 : COLORS[@tolerance.downcase.to_sym][:tolerance]
  end

  def color(color_key)
    COLORS[color_key.downcase.to_sym][:color]
  end

  def color1
    color(@color1) * 10
  end

  def color2
    color(@color2)
  end
end
