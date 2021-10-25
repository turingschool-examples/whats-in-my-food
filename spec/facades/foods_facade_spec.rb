require 'rails_helper'

describe FoodsFacade do
  it 'creates food objects from search function' do
    VCR.use_cassette('foods') do
      first_result = FoodsFacade.search('sweet potatoes').first

      expect(first_result).to be_a Food
    end
  end
  it 'pull information about the search into a search info object' do
    VCR.use_cassette('hits-1') do
      search_info = FoodsFacade.search_hits('sweet potato')

      expect(search_info).to be_a SearchInfo
    end
  end
end
