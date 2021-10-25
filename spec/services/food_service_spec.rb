require 'rails_helper'

RSpec.describe FoodService do
  describe '.search_by_ingredient' do
    it 'returns a list of foods with the searched ingredient' do
      response = FoodService.search_by_ingredient('sweet potatoes')

      expect(response).to be_a Hash
      expect(response).to have_key(:totalHits)
      expect(response[:totalHits]).to eq(46320)
      expect(response).to have_key(:foods)
      expect(response[:foods].length).to eq(10)
      expect(response[:foods]).to be_an(Array)
      expect(response[:foods].first).to be_a(Hash)
      expect(response[:foods].first[:gtinUpc]).to eq("076700002019")
      expect(response[:foods].first[:ingredients]).to eq("SWEET POTATOES.")
      expect(response[:foods].first[:brandOwner]).to eq("John W. Taylor Packing Co. Inc")
      expect(response[:foods].first[:description]).to eq("SWEET POTATOES")
    end
  end
end
