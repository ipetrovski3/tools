# frozen_string_literal: true

RSpec.describe Tools::Isogram do
  it 'checks if a single letter is used multiple times' do
    phrase = Tools::Isogram.new('letter')
    expect(phrase.letter_count).to be > 1
  end

  it 'checks if its isogram, Ex: lumberjacks' do
    phrase = Tools::Isogram.new('lumberjacks')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: background' do
    phrase = Tools::Isogram.new('background')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: six-year-old' do
    phrase = Tools::Isogram.new('six-year-old')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: downstream' do
    phrase = Tools::Isogram.new('downstream')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: isograms' do
    phrase = Tools::Isogram.new('isograms')
    expect(phrase.isogram_check).to eq('Not Isogram')
  end
end
