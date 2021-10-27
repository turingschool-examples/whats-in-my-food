require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns a list of foods by search' do
    foods_results = FoodFacade.food_search('sweet potato')
    expect(foods_results).to be_a(Hash)
    expect(foods_results).to have_key(:total_hits)
    expect(foods_results[:total_hits]).to be_an(Integer)

    expect(foods_results).to have_key(:foods)
    expect(foods_results[:foods].count).to eq(10)
    expect(foods_results[:foods].first).to be_a(FoodItem)
  end
end
