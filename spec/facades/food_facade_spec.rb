require 'rails_helper'

describe 'food facade' do
  it 'can return 10 food objects' do
    foods = FoodFacade.food_search('chocolate chips')
    expect(foods).to be_an Array
    expect(foods.first).to be_a Food
    expect(foods.first.description).to be_a String
    expect(foods.count).to eq 10
  end

  it 'returns result count' do
    results = FoodFacade.result_count('chocolate chips')
    expect(results).to be_an Integer
    expect(results).to eq 56_166
  end
end
