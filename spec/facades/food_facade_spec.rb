require 'rails_helper'

describe 'Food Facade'do
  it 'returns foods containing a keyword' do
    foods = FoodFacade.foods_containing("sweet potatoes")

    expect(foods).to be_an(Array)
    expect(foods.size).to eq(50)
  end

  it 'returns count of foods containing a keyword' do
    count = FoodFacade.count_foods_containing("sweet potatoes")

    expect(count).to eq(44128)
  end
end
