require 'rails_helper'

RSpec.describe FoodService do
   it 'can pull data about food' do
      results = FoodService.new
      food_results = results.food_search("sweet potatoes")

      expect(food_results).to be_a(Hash)

      expect(food_results).to have_key(:foods)
      expect(food_results[:foods]).to be_a(Array)

      first_result = food_results[:foods].first

      expect(first_result).to have_key(:brandOwner)
      expect(first_result).to have_key(:description)
      expect(first_result).to have_key(:gtinUpc)
      expect(first_result).to have_key(:ingredients)
   end
end