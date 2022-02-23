require 'rails_helper'

RSpec.describe FoodFacade do
  it 'foods', :vcr do
    food = 'Sweet Potato'
    foods = FoodFacade.all_foods(food)

    expect(foods).to be_an Array
    foods.each do |food|
      expect(food).to be_a Food
    end
  end
end
