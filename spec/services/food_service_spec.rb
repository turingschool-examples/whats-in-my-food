require 'rails_helper'

describe FoodService do
  context "class methods" do
    context "#search_by_ingredient" do
      it "returns food data" do
        stub_ingredient_search
        response = FoodService.search_by_ingredient("sweet potatoes")
        expect(response).to be_a Hash
        expect(response[:foods]).to be_an Array
        food_data = response[:foods].first

        expect(food_data).to have_key :gtinUpc
        expect(food_data[:gtinUpc]).to be_a(String)

        expect(food_data).to have_key :description
        expect(food_data[:description]).to be_a(String)

        expect(food_data).to have_key :brandOwner
        expect(food_data[:brandOwner]).to be_a(String)

        expect(food_data).to have_key :ingredients
        expect(food_data[:ingredients]).to be_a(String)
      end
    end
  end
end
