require 'rails_helper'

describe FoodService do
  it 'can get all food data by food search' do
    food = FoodService.food_search("sweet potatoes")

    expect(food).to be_a(Hash)
    expect(food[:foods].first).to have_key(:brandOwner)
    expect(food[:foods].first).to have_key(:gtinUpc)
    expect(food[:foods].first).to have_key(:description)
    expect(food[:foods].first).to have_key(:ingredients)
  end
end
