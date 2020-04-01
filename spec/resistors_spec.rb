# frozen_string_literal: true

RSpec.describe Tools::Resistors do
  it 'gives value with two colors resistor' do
    resistor = Tools::Resistors.new(['brown', 'green'])
    expect(resistor.first_two_colors).to eq(15)
  end

  it 'ignore the value of the third color given' do
    resistor = Tools::Resistors.new(['brown', 'green', 'violet'])
    expect(resistor.first_two_colors).to eq(15)
  end

  it 'use the third color as a multiplier to calculate ohms' do
    resistor = Tools::Resistors.new(['brown', 'green', 'violet'])
    expect(resistor.resistor_omhs).to eq(150_000_000)
  end

  it 'gives the full explanation of the resistor value and tolerance' do
    resistor = Tools::Resistors.new(['brown', 'green', 'violet', 'gold'])
    expected = 'Resistor value is 150000000 ohms, with ± 5% tolerance'
    expect(resistor.resistor_specs).to eq(expected)
  end

  it 'default tolerance value is ± 20% when no present color' do
    resistor = Tools::Resistors.new(['brown', 'green', 'violet'])
    expected = 'Resistor value is 150000000 ohms, with ± 20% tolerance'
    expect(resistor.resistor_specs).to eq(expected)
  end
end