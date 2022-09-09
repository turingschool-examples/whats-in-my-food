require 'rails_helper'

RSpec.describe FoodFacade do
  describe '::create_food_search', :vcr do
    it 'gets data for food names that match a keyword(s)' do
      food_results = FoodFacade.create_food_search('sweet potatoes')

      expect(food_results.total_hits).to be > 30000
      expect(food_results.description).to be_an(Array)
      expect(food_results.description[0]).to be_a(String)
    end
  end
end