# frozen_string_literal: true

RSpec.describe Isogram do
  it 'checks if a single letter is used multiple times' do
    phrase = Isogram.new('letter')
    expect(phrase.letter_count).to be > 1
  end

  it 'checks if its isogram, Ex: lumberjacks' do
    phrase = Isogram.new('lumberjacks')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: background' do
    phrase = Isogram.new('background')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: six-year-old' do
    phrase = Isogram.new('six-year-old')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: downstream' do
    phrase = Isogram.new('downstream')
    expect(phrase.isogram_check).to eq('Isogram')
  end

  it 'checks if its isogram, Ex: isograms' do
    phrase = Isogram.new('isograms')
    expect(phrase.isogram_check).to eq('Not Isogram')
  end
end
