require 'rails_helper'

describe FoodService do
  context 'class methods' do
    context 'returns food data' do
      scenario 'test_food_service', :vcr do
        results = FoodService.find_foods_by_ingredient('sweet potatoes')
        expect(results).to have_key :foods
      end
    end
  end
end