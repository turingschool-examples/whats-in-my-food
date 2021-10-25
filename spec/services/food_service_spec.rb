require 'rails_helper'

RSpec.describe FoodService do
  it 'returns a list of foods with the searched food in them' do
    food_search = FoodService.food_search("sweet potatoes")

    expect(food_search).to be_a(Hash)
    expect(food_search).to have_key(:totalHits)
    expect(food_search[:foods].first).to have_key(:gtinUpc)
    expect(food_search[:foods].first).to have_key(:description)
    expect(food_search[:foods].first).to have_key(:brandOwner)
    expect(food_search[:foods].first).to have_key(:ingredients)
    expect(food_search.count).to eq(7)
  end
end
