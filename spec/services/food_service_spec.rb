require 'rails_helper'

RSpec.describe FoodService do
  context 'class_methods' do
    it 'returns foods with query' do
      search = FoodService.foods_with_ingredient('sweet potato')
      expect(search).to be_a(Hash)
      expect(search).to have_key(:totalHits)
      expect(search[:totalHits]).to be_a(Integer)
      expect(search).to have_key(:foods)
      expect(search[:foods]).to be_an(Array)

      food = search[:foods].first
      expect(food).to have_key(:description)
      expect(food[:description]).to be_a(String)

      expect(food).to have_key(:brandOwner)
      expect(food[:brandOwner]).to be_a(String)

      expect(food).to have_key(:gtinUpc)
      expect(food[:gtinUpc]).to be_a(String)

      expect(food).to have_key(:ingredients)
      expect(food[:ingredients]).to be_a(String)
    end
  end
end
