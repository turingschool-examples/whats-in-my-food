require 'rails_helper'

RSpec.describe FoodFacade do
  it '.search_for_food', :vcr do
    searched_foods = FoodFacade.food_info('Sweet Potatoes')

    expect(searched_foods).to be_a Array
    searched_foods.each do |searched_food|
      expect(searched_food).to be_a Food
    end
  end
end
