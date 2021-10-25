require 'rails_helper'

RSpec.describe 'food facade', :vcr do
  it 'can return 10 food objects' do
    foods = FoodFacade.food_search("chocolate chips")

    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(Food)
    expect(foods.first.description).to be_a(String)
    expect(foods.count).to eq(10)
  end

  it 'returns the result count for a search' do
    results = FoodFacade.results_count("chocolate chips")

    expect(results).to be_an(Integer)
    expect(results).to eq(52444)
  end
end
