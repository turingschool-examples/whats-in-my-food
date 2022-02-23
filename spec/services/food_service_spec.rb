require 'rails_helper'

RSpec.describe FoodService, type: :service do
  context 'class methods' do
    describe '::conn' do
      it 'returns Faraday connection' do
        food = FoodService.conn

        expect(food).to be_a(Faraday::Connection)
      end
    end

    describe '::search_foods' do
      it 'returns hash of foods queried by food keyword' do
        search = FoodService.search_foods('sweet potatoes')

        expect(search[:foodSearchCriteria][:query]).to eq('sweet potatoes')
        expect(search).to be_a(Hash)
        expect(search[:foods])
      end
      
      xit 'returns array of foods' do
        search = FoodService.search_foods('sweet potatoes')
        
        expect(search[:totalHits]).to be_a(Array)
      end
    end
  end
end
