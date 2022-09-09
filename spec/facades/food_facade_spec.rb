require 'rails_helper'

RSpec.describe FoodFacade do
  describe '::create_food_search', :vcr do
    it 'gets data for food names that match a keyword(s)' do
      food_results = FoodFacade.create_food_search('sweet potatoes')

      expect(food_results.count).to eq(10)
      expect(food_results[0].total_hits).to be > 30000
      expect(food_results[0].description).to be_a(String)
      expect(food_results[0].gtin_upc_code).to be_a(String)
      expect(food_results[0].brand_owner).to be_a(String)
      expect(food_results[0].ingredients).to be_a(String)
    end
  end
end