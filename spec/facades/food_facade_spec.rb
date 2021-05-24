require 'rails_helper'

describe 'FoodFacade' do
  it 'exists' do
    food_facade = FoodFacade.new
    expect(food_facade).to be_an_instance_of(FoodFacade)
  end

  it 'returns a food object' do
    food_input = 'sweet potatoes'
    food_facade = FoodService.return_food_query(food_input)
    expect(food_facade.count).to eq(50)
  end
end