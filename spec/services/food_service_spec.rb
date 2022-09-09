require 'rails_helper'

describe FoodService do

  context "#foods_by_ingredient" do
    it 'returns list of foods with a given ingredient' do
      results = FoodService.foods_by_ingredient("sweet potatoes")

      foods = results[:foods]

      expect(results).to be_a Hash

      expect(foods.first).to have_key :gtinUpc
      expect(foods.first[:gtinUpc]).to be_a(String)
      expect(foods.first[:gtinUpc].to_i).to be_a(Integer)

      expect(foods.first).to have_key :description
      expect(foods.first[:description]).to be_a(String)

      expect(foods.first).to have_key :brandOwner
      expect(foods.first[:brandOwner]).to be_a(String)

      expect(foods.first).to have_key :ingredients
      expect(foods.first[:ingredients]).to be_a(String)
    end
  end
end