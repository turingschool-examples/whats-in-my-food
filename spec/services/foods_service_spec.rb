require 'rails_helper'

RSpec.describe FoodsService do
  describe 'class methods' do
    describe '#foods_by_ingredient(ingredient)', :vcr do
      it 'retrieves food data containing the search ingredient' do
        search = FoodsService.foods_by_ingredient('sweet potatoes')
        require "pry"; binding.pry
        expect(search).to be_a Hash
      end
    end
  end
end
