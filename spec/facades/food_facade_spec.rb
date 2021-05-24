require 'rails_helper'

describe 'Food Facade' do
  it 'returns an array of first 10 food objects based on ingredient search' do
    VCR.use_cassette('search_sweet_potatoes') do
      facade = FoodFacade.find_foods("sweet potatoes")
      expect(facade).to be_an Array
      expect(facade.first).to be_a Food
    end
  end

  it 'returns total number of results for ingredient search' do
    VCR.use_cassette('search_sweet_potatoes') do
      facade = FoodFacade.total_results("sweet potatoes")
      expect(facade).to be_an Integer
      expect(facade).to eq 44128
    end
  end
end
