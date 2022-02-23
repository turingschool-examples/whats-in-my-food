require 'rails_helper'

RSpec.describe FoodFacade do
  describe '::food_search' do
    it 'returns as many as ten of the top search results that contain the searched item' do
      food_items = FoodFacade.food_search("sweet potatoes")

      expect(food_items).to be_an Array
      food_items.each do |item|
        expect(item).to be_a FoodItem
        expect(item.id).to be_an Integer
        expect(item.name).to be_a String
      end
    end
  end
end
