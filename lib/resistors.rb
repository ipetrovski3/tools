class Resistors
  VALUE = %w[black brown red orange yellow green blue violet grey white].freeze
  TOLERANCE = {
    'black' => 20,
    'brown' => 1,
    'red' => 2,
    'orange' => 3,
    'yellow' => 100,
    'green' => 0.5,
    'blue' => 0.25,
    'violet' => 0.10,
    'grey' => 0.05,
    'white' => 10,
    'gold' => 5,
    'silver' => 10
  }.freeze

  def initialize(resistor_colors)
    @colors = resistor_colors
  end

  def value(color)
    VALUE.each_with_index do |v, i|
      return i if v == color
    end
  end

  def res_two_value
    (value(@colors[0]) * 10 + value(@colors[1]))
  end

  def resistor
    "Resistor value is #{resistor_value} omhs, with tolerance #{resistor_tolerance}"
  end

  def resistor_value
    res_two_value * 10**value(@colors[2])
  end

  def tolerance
    TOLERANCE.values_at(@colors[3]).join
  end

  def resistor_tolerance
    "± #{tolerance}%"
  end
end
