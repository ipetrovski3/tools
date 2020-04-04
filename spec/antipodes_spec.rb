RSpec.describe Tools::Antipodes do
  it 'will return Antidope array for given numbers EX: [1,2,3,4]' do
    numbers = Tools::Antipodes.new([1, 2, 3, 4])
    expected = [2.5, 2.5]
    expect(numbers.antipodes_average).to eq(expected)
  end

  it 'will ignore the number in the middle if array length is odd EX: [1,2,3,4,5]' do
    numbers = Tools::Antipodes.new([1, 2, 3, 4, 5])
    expected = [3, 3]
    expect(numbers.antipodes_average).to eq(expected)
  end

  it 'will return Antidope array for given negative numbers EX: [-1,-2]' do
    numbers = Tools::Antipodes.new([-1, -2])
    expected = [-1.5]
    expect(numbers.antipodes_average).to eq(expected)
  end

  it 'will return the input array if array length is 1 EX: [5]' do
    numbers = Tools::Antipodes.new([5])
    expected = [5]
    expect(numbers.antipodes_average).to eq(expected)
  end


end