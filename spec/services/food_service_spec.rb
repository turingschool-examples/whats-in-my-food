require 'rails_helper'

RSpec.describe FoodService do
  describe 'class methods' do
    describe 'foods search' do

      before(:each) do
        VCR.insert_cassette('sweet_potato_search')
      end
      after(:each) do
        VCR.eject_cassette('sweet_potato_search')
      end

      let!(:search) {FoodService.foods_search('sweet potato')}
      let!(:result) {search[:foods].first}

      it 'returns response hash' do
        expect(search).to be_a(Hash)
      end

      it 'has total results count' do
        expect(search).to have_key(:totalHits)
        expect(search[:totalHits]).to be_an(Integer)
      end

      it 'contains results array' do
        expect(search).to have_key(:foods)
        expect(search[:foods]).to be_an(Array)
      end

      it 'results array elements contain food data hash' do
        expect(result).to be_a(Hash)
      end

      it 'element hash contains correct data' do
        expect(result).to have_key(:gtinUpc)
        expect(result[:gtinUpc]).to be_a(String)

        expect(result).to have_key(:description)
        expect(result[:description]).to be_a(String)

        expect(result).to have_key(:brandOwner)
        expect(result[:brandOwner]).to be_a(String)

        expect(result).to have_key(:ingredients)
        expect(result[:ingredients]).to be_a(String)
      end
    end
  end
end
