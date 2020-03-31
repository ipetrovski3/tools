# frozen_string_literal: true

RSpec.describe Resistors do
  it 'gives value with two colors resistor' do
    resistor = Resistors.new(['brown', 'green'])
    expect(resistor.res_two_value).to eq(15)
  end

  it 'ignore the value of the third color given' do
    resistor = Resistors.new(['brown', 'green', 'violet'])
    expect(resistor.res_two_value).to eq(15)
  end

  it 'use the third color as a multiplier to calculate ohms' do
    resistor = Resistors.new(['brown', 'green', 'violet'])
    expect(resistor.resistor_value).to eq(150_000_000)
  end

  it 'the fourth color will show the tolerance' do
    resistor = Resistors.new(['brown', 'green', 'violet', 'gold'])
    expected = '± 5%'
    expect(resistor.resistor_tolerance).to eq(expected)
  end

  it 'gives the full explanation of the resistor value and tolerance' do
    resistor = Resistors.new(['brown', 'green', 'violet', 'gold'])
    expected = 'Resistor value is 150000000 omhs, with tolerance ± 5%'
    expect(resistor.resistor).to eq(expected)
  end


end