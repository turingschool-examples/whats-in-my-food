require 'rails_helper'

RSpec.describe FoodsService do
  describe 'foods_by_ingredient' do
    it 'returns a collection of foods from api endpoint', :vcr do
      foods = FoodsService.foods_by_ingredient("eggs")
      expect(foods[:foods].first).to have_key(:gtinUpc)
      expect(foods[:foods].first).to have_key(:description)
      expect(foods[:foods].first).to have_key(:brandOwner)
      expect(foods[:foods].first).to have_key(:ingredients)

    end
  end
end
