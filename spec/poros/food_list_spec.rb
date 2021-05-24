require 'rails_helper'

describe 'food list class' do
  it 'exists', :vcr do
    food_list = FoodFacade.find_food('sweet potatoes')

    expect(food_list).to be_a FoodList
    expect(food_list.total_hits).to eq(44128)
    expect(food_list.foods.count).to eq(10)
  end
end