require 'rails_helper'

RSpec.describe FoodDataService do
  let(:service) { FoodDataService.new }

  describe 'search_by_ingredient' do
    it 'returns a hash of data' do
      expect(service.search_by_ingredient('sweet potatoes')).to be_a Hash
    end

    it 'contains values needed for view' do
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
      expect(service.search_by_ingredient('sweet potatoes')[:totalHits]).to be_a Integer

      service.search_by_ingredient('sweet potatoes')[:foods].each do |food|
        # require "pry"; binding.pry
        expect(food).to have_key(:gtinUpc)
        expect(food).to have_key(:description)
        expect(food).to have_key(:brandOwner)
        expect(food).to have_key(:ingredients)
      end

    end
  end
end
