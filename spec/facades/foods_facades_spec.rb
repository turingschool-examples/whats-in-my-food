require 'rails_helper'

RSpec.describe FoodsFacade do
  describe 'search by foods' do
    it 'returns an array of food objects ', :vcr do
      test = FoodsFacade.search_by_food("corn")

      expect(test).to be_a(Array)
      expect(test.first).to be_an_instance_of(Food)
    end
  end

  describe 'total hits' do
    it 'returns an array of food objects ', :vcr do
      test = FoodsFacade.total_hits("corn")

      expect(test).to be_a(Integer)
      expect(test).to eq(138783)
    end
  end
end
