require "rails_helper"

RSpec.describe FoodFacade do
  it 'can return results' do
    results = FoodFacade.food_search('sweet potatoes')

    expect(results).to be_a(SearchResult)
    expect(results.total_results).to be_a(Integer)
    expect(results.foods.length).to eq(10)
    expect(results.foods.first).to be_a(Food)
  end
end
