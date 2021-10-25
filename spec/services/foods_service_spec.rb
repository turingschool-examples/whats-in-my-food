require 'rails_helper'


describe FoodsService do
  it 'can get all food data' do
      response = FoodsService.food_search_results('sweet potato')

      expect(response).to be_a  Hash
      expect(response[:foods]).to be_an Array

      food_data = response[:foods].first

      expect(food_data).to have_key :description
      expect(food_data[:description]).to be_a String

      expect(food_data).to have_key :ingredients
      expect(food_data[:ingredients]).to be_a String

      expect(food_data).to have_key :brandOwner
      expect(food_data[:brandOwner]).to be_a String

      expect(food_data).to have_key :gtinUpc
      expect(food_data[:gtinUpc]).to be_a String
  end
end
