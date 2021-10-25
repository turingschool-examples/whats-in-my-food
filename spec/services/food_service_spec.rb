require 'rails_helper'

describe FoodService do
  describe 'food search' do
    it 'returns a list of foods' do
      foods = FoodService.search_food('sweet potatoes')

      expect(foods).to be_an(Array)
      expect(foods.first).to have_key(:gtinUpc)
      expect(foods.first).to have_key(:description)
      expect(foods.first).to have_key(:brandOwner)
      expect(foods.first).to have_key(:ingredients)
      expect(foods.count).to eq(10)
    end
  end
end