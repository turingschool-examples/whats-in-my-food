require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns food object data', :vcr do
    foods = FoodFacade.find_foods("sweet potato")
    expect(foods).to be_an(Array)
    expect(foods.count).to eq(10)

    food = foods.first
    expect(food).to be_a(Food)
    expect(food.gtinupc).to be_a(String)
  end
end
