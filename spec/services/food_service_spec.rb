require 'rails_helper'

describe FoodService do
  context "class methods" do
    context "#food_search" do
      it "returns food data based on a search", :vcr do
        food = "cheddar cheese"
        search = FoodService.food_search(food)

        expect(search).to be_a Hash
        expect(search[:totalHits]).to be_an Integer
        expect(search[:foods]).to be_an Array

        food_data = search[:foods].first

        expect(food_data).to have_key :gtinUpc
        expect(food_data[:gtinUpc]).to be_a(String)

        expect(food_data).to have_key :lowercaseDescription
        expect(food_data[:lowercaseDescription]).to be_a(String)

        expect(food_data).to have_key :brandOwner
        expect(food_data[:brandOwner]).to be_a(String)

        expect(food_data).to have_key :ingredients
        expect(food_data[:ingredients]).to be_a(String)
      end
    end
  end
end