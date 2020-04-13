RSpec.describe Tools::Chocolate do
  it 'will return true if the total area of chocolate is the same for each person' do
    milka = Tools::Chocolate.new([[4, 3], [2, 4], [1, 2]], [[6, 2], [4, 2], [1, 1], [1, 1]])
    expect(milka.fairness?).to be true
  end
end