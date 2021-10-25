require 'rails_helper'

RSpec.describe FoodFacade do
  describe '.search_by_food' do
    it 'returns a list of foods by search query' do
      search_results = FoodFacade.search_by_food("sweet potatoes")

      expect(search_results).to be_a(Array)
      expect(search_results.count).to eq(10)
    end
  end
end
