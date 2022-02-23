require 'rails_helper'

RSpec.describe FoodDataFacade do
  let(:facade) { FoodDataFacade.new }
  describe 'search_by_ingredient' do
    it 'returns an array of food items' do
      expect(facade.search_by_ingredient('sweet potatoes')).to be_a Array

      facade.search_by_ingredient('sweet potatoes').each do |food|
        expect(food).to be_a Food
      end
    end
  end
end
