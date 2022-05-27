require 'rails_helper'

RSpec.describe 'food data service' do
  describe 'class methods' do
    it '#connection' do
      expect(FoodDataService.connection).to be_a(Faraday::Connection)
    end

    it '#parsed_response' do
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to be_a(Hash)
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to have_key(:totalHits)
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to have_key(:currentPage)
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to have_key(:totalPages)
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to have_key(:pageList)
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to have_key(:foodSearchCriteria)
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to have_key(:foods)
      expect(FoodDataService.parsed_search_response('sweet potatoes')).to have_key(:aggregations)      
    end
  end
end
