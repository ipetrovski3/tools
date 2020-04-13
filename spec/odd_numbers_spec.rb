RSpec.describe Tools::OddNumbers do
  it 'will return the first odd number of given array' do
    numbers = Tools::OddNumbers.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expected = -1
    expect(numbers.first_odd_integer).to eq(expected)
  end

  it 'will return all of the integers which appears an odd number of times' do
    numbers = Tools::OddNumbers.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expected = [-1, 5]
    expect(numbers.odds_counter).to eq(expected)
  end
end