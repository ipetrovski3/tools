RSpec.describe Tools::OddNumbers do
  it 'will return the first odd number of given array' do
    numbers = Tools::OddNumbers.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expected = 5
    expect(numbers.first_odd_integer).to eq(expected)
  end

  it 'will return all of the integers which appears an odd number of times' do
    numbers = Tools::OddNumbers.new([1, 1, 2, -2, 5, 2, 4, 4, -1, -2, 5, 5])
    expected = [5, -1]
    expect(numbers.odds_counter).to eq(expected)
  end

  it 'will return the input array in integer if array size is one element' do
    numbers = Tools::OddNumbers.new([10])
    expected = 10
    expect(numbers.first_odd_integer).to eq(expected)
  end

  it 'will return the input array if array size is one element' do
    numbers = Tools::OddNumbers.new([10])
    expected = [10]
    expect(numbers.odds_counter).to eq(expected)
  end
end