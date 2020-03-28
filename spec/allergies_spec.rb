# frozen_string_literal: true

RSpec.describe Allergies do
  describe "determine whether or not they're allergic to a given item" do
    it 'matches the allergen with the score' do
      allergies = Allergies.new(1)
      expect(allergies.allergic_to?('eggs')).to be true
    end
    it 'does not match the allergen with the score' do
      allergies = Allergies.new(1)
      expect(allergies.allergic_to?('peanuts')).to be false
    end
    it 'matches multiple allergens with one score' do
      allergies = Allergies.new(3)
      expect(allergies.allergic_to?('eggs')).to be true
      expect(allergies.allergic_to?('peanuts')).to be true
    end
  end
  describe 'gives list of allergies from test score' do
    it 'is allergic to peanuts and chocolade for score 34' do
      allergies = Allergies.new(34)
      expected = ['peanuts', 'chocolade']
      expect(allergies.score_allergens).to match_array(expected)
    end
    it 'returns an empty array if score is 256' do
      allergies = Allergies.new(256)
      expected = []
      expect(allergies.score_allergens).to match_array(expected)
    end
  end
end
