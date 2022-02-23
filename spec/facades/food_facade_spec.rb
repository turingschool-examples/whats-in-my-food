require 'rails_helper'

RSpec.describe FoodFacade do
  describe 'food_search' do
    it 'returns search result food array' do
      VCR.use_cassette('sweet_potato_search') do
        results = FoodFacade.foods_search('sweet potato')

        expect(results).to be_an(Array)

        results.each do |result|
          expect(result).to be_instance_of(Food)
        end
      end
    end
  end

  describe 'search_info' do
    it 'returns query and total results for search' do
      VCR.use_cassette('sweet_potato_search') do
        info = FoodFacade.search_info('sweet potato')

        expect(info).to be_instance_of(SearchInfo)
      end
    end
  end 
end
