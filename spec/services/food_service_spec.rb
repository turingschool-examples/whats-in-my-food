require 'rails_helper'

RSpec.describe FoodService do
  describe 'class methods' do
    describe 'foods search' do
      let!(:search) {FoodService.foods_search('sweet potato')}
      let!(:result) {search[:foods].first}

      it 'returns response hash' do
        expect(search).to be_a(Hash)
      end
    end
  end
end 
