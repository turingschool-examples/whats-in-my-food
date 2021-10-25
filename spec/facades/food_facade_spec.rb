require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns a list of foods by search' do
    foods = FoodFacade.food_search('sweet potato')
    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(FoodItem)
  end
end
