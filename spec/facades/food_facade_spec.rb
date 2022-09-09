require 'rails_helper'

RSpec.describe 'FoodFacade', :vcr do
  it 'makes a call and returns an array of foods by search' do
    foods = FoodFacade.food_finder("chocolate")

    expect(foods).to be_a(Array)
    expect(foods).to be_all(Food)
  end
end