require 'rails_helper'

RSpec.describe FoodFacade do
  describe '.search_by_ingredient' do
    it 'returns an array of foods with the searched ingredient' do
      results = FoodFacade.search_by_ingredient('sweet potatoes')

      expect(results).to be_a(Hash)
      expect(results).to have_key(:total_result_count)
      expect(results[:total_result_count]).to eq(46320)
      expect(results).to have_key(:top_ten_foods)
      expect(results[:top_ten_foods]).to be_an(Array)

      expect(results[:top_ten_foods].first).to be_a(Food)
      expect(results[:top_ten_foods].first.upc_code).to eq('076700002019')
      expect(results[:top_ten_foods].first.description).to eq('SWEET POTATOES')
      expect(results[:top_ten_foods].first.brand).to eq('John W. Taylor Packing Co. Inc')
      expect(results[:top_ten_foods].first.ingredients).to eq('SWEET POTATOES.')
    end
  end
end
