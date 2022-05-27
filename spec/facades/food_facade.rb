require 'rails_helper'

RSpec.describe FoodFacade do
  context 'class methods' do
    it '.total_results(query) returns an integer of how many results match the query' do
      result = FoodFacade.total_results('Sweet Potatoes')

      expect(result).to eq(49652)
    end

    it '.find_foods(query) returns 10 POROs of all matching foods' do
      result = FoodFacade.find_foods('Sweet Potatoes')

      expect(result).to be_an Array
      expect(result).to be_all Food
      expect(result.count).to eq 10
    end 
  end
end
