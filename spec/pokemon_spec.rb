RSpec.describe Tools::Pokemon do
  it 'will calculate the damage of elements given' do
    damage = Tools::Pokemon.new('fire', 'water', 100, 100)
    expected = 25
    expect(damage.calculate_damage).to eq(expected)
  end

  it 'will calculate the damage of elements given' do
    damage = Tools::Pokemon.new('grass', 'fire', 35, 5)
    expected = 175
    expect(damage.calculate_damage).to eq(expected)
  end

  it 'will calculate the damage of elements given' do
    damage = Tools::Pokemon.new('electric', 'fire', 100, 100)
    expected = 50
    expect(damage.calculate_damage).to eq(expected)
  end
end