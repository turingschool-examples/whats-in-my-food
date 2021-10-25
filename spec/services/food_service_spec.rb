require 'rails_helper'

describe FoodService do
  describe 'food search' do
    it 'returns a list of foods' do
      foods = FoodService.search_food('sweet potatoes')

      expect(foods).to be_a(Hash)
      expect(foods).to have_key(:foods)
      expect(foods[:foods]).to be_an(Array)
      expect(foods[:foods].first).to have_key(:gtinUpc)
      expect(foods[:foods].first).to have_key(:description)
      expect(foods[:foods].first).to have_key(:brandOwner)
      expect(foods[:foods].first).to have_key(:ingredients)
    end
  end
end