require 'rails_helper'

describe 'Food Facade'do
  it 'returns foods containing a keyword' do
    food_info = FoodFacade.foods_containing("sweet potatoes")

    expect(foods).to be_an(Array)
    expect(foods.size).to eq(25)
    expect(foods.first).to be_an_instance_of(Food)
  end

  it 'returns count of foods containing a keyword' do
    count = FoodFacade.count_of_foods_containing("sweet potatoes")

    expect(count).to eq(44128)
  end
end
