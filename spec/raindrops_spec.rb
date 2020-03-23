# frozen_string_literal: true

RSpec.describe Raindrops do
  it "has a 3 factor with output 'Pling'" do
    rain = Raindrops.new(3)
    expect(rain.song).to eq('Pling')
  end

  it "has a 5 factor with output 'Plang'" do
    rain = Raindrops.new(5)
    expect(rain.song).to eq('Plang')
  end

  it "has a 7 factor with output 'Plong'" do
    rain = Raindrops.new(7)
    expect(rain.song).to eq('Plong')
  end

  it "has a 7 factor with output 'Plong'" do
    rain = Raindrops.new(28)
    expect(rain.song).to eq('Plong')
  end


  it "has factors 3 and 5 with output 'PlingPlang'" do
    rain = Raindrops.new(30)
    expect(rain.song).to eq('PlingPlang')
  end

  it 'has no factors used so return the digit in string' do
    rain = Raindrops.new(34)
    expect(rain.song).to eq('34')
  end
end
