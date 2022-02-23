require 'rails_helper'

RSpec.describe FoodService do
  context '.food_info' do
    it "returns food search", :vcr do
      search = FoodService.food_info('Sweet Potatoes')

      expect(search).to be_a Hash
      expect(search[:foods]).to be_a Array

      search_data = search[:foods].first

      expect(search_data).to have_key :description
      expect(search_data[:description]).to be_a String

      expect(search_data).to have_key :brandOwner
      expect(search_data[:brandOwner]).to be_a String

      expect(search_data).to have_key :ingredients
      expect(search_data[:ingredients]).to be_a String

      expect(search_data).to have_key :gtinUpc
      expect(search_data[:gtinUpc]).to be_a String
    end
  end
end
