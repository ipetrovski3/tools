# frozen_string_literal: true

RSpec.describe Tools::Acronym do
  it 'converts to acronym with capital letters EX: igor petrovski to IP' do
    acro = Tools::Acronym.new.make_acronym('igor petrovski')
    expect(acro).to eq('IP')
  end

  it 'converts to acronym with capital letters EX: three letters acronyms to TLA' do
    acro = Tools::Acronym.new.make_acronym('three letters acronyms')
    expect(acro).to eq('TLA')
  end

  it 'converts to acronym with capital letters EX: portable network graphics to PNG' do
    acro = Tools::Acronym.new.make_acronym('portable network graphics')
    expect(acro).to eq('PNG')
  end

  it "will be found many times in ruby 'don't repeat yourself' or DRY" do
    acro = Tools::Acronym.new.make_acronym('dont repeat yourself')
    expect(acro).to eq('DRY')
  end

end
