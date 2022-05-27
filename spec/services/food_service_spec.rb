require 'rails_helper'

RSpec.describe FoodService do
  context 'class methods' do
    it '.get_foods(query) returns JSON data of first 10 mathcing foods' do
      response = FoodService.get_foods('Sweet Potatoes')

      food_data = response[:foods]

      food_data[0..9].each do |food|
        expect(food).to have_key :fdcId
        expect(food[:fdcId]).to be_an Integer

        expect(food).to have_key :lowercaseDescription
        expect(food[:lowercaseDescription]).to be_a String

        expect(food).to have_key :gtinUpc
        expect(food[:gtinUpc]).to be_a String

        expect(food).to have_key :brandOwner
        expect(food[:brandOwner]).to be_a String
      end
    end
  end
end
