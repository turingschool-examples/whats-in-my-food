require 'rails_helper'

RSpec.describe FoodService do
  describe 'class methods' do
    describe '#foods_by_ingredient(ingredient)', :vcr do
      it 'retrieves food data containing the search ingredient' do
        search = FoodService.foods_by_ingredient('sweet potatoes')
        expect(search).to be_a Hash
      end
    end
  end
end
