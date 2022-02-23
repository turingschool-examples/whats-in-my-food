require 'rails_helper'

RSpec.describe FoodService do
  context 'class methods' do
    context '.search_for_food' do
      it "returns all food results" do
        foods = FoodService.search_for_food("sweet potatoes")

        expect(foods).to be_a Hash

        food_data = foods[:foods].first

        expect(food_data).to have_key :fdcId
        expect(food_data[:fdcId]).to be_a Integer

        expect(food_data).to have_key :description
        expect(food_data[:description]).to be_a String
      end
    end
  end
end
