RSpec.describe Tools::TimeAdjust do
  it 'will adjust the clock by given hours, minutes and seconds ' do
    time = Tools::TimeAdjust.new('01:00:00', 1, 30, 10)
    expected = '02:30:10'
    expect(time.adjust_clock).to eq(expected)
  end

  it 'will adjust the clock by given hours, minutes and seconds ' do
    time = Tools::TimeAdjust.new('18:22:30', 4, 60, 30)
    expected = '23:23:00'
    expect(time.adjust_clock).to eq(expected)
  end

  it 'will adjust the clock by given hours, minutes and seconds ' do
    time = Tools::TimeAdjust.new('00:00:00', 72, 120, 120)
    expected = '02:02:00'
    expect(time.adjust_clock).to eq(expected)
  end
end