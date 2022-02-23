require 'rails_helper'

RSpec.describe FoodFacade, type: :facade do
  context 'class methods' do
    describe '::food_search_list' do
      it 'should return an array of queried park objects' do
        food_list = FoodFacade.food_search_list('sweet potatoes')

        expect(food_list).to be_a(Array)
        expect(food_list.first).to be_a(Food)
      end

      it 'should return only first ten foods that match search' do
        food_list = FoodFacade.food_search_list('sweet potatoes')

        expect(food_list.count).to eq(10)
      end
    end

    describe '::food_search_count' do
      it 'should return a count of the foods that match the search' do
        search_count = FoodFacade.food_search_count('sweet potatoes')

        expect(search_count).to eq(48008)
      end
    end
  end
end