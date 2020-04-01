# frozen_string_literal: true

RSpec.describe Tools::Armstrong do
  it 'Checks if 9 is armstrong number' do
    number = Tools::Armstrong.new(9)
    expect(number.check_armstrong).to be true
  end

  it 'Checks if 10 is armstrong number' do
    number = Tools::Armstrong.new(10)
    expect(number.check_armstrong).to be false
  end

  it 'Checks if 153 is armstrong number' do
    number = Tools::Armstrong.new(153)
    expect(number.check_armstrong).to be true
  end

  it 'Checks if 154 is armstrong number' do
    number = Tools::Armstrong.new(154)
    expect(number.check_armstrong).to be false
  end
end
