require 'rails_helper'

describe 'food facade' do
  describe 'class_methods' do
    context '#find_food' do
      it 'returns a food list with the searched food', :vcr do
        food_list = FoodFacade.find_food('sweet potatoes')

        expect(food_list).to be_a FoodList
      end
    end
  end
end