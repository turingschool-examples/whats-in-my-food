require 'rails_helper'

describe FoodFacade do
  it 'returns colleciton of ten Food objects' do
    foods = FoodFacade.ten_food_search("sweet potatoes")
    expect(foods).to be_a Array
    expect(foods.first).to be_a Food
  end
end
