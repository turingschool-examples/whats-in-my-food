require 'rails_helper'

RSpec.describe 'Food Facade' do
  it 'returns an array of food objects' do
    ingredient_search = FoodFacade.foods_with_ingredient('Avocado')

    expect(ingredient_search).to be_an(Array)
    expect(ingredient_search.first).to be_a(Food)
  end


  it 'returns total number of results' do
    total_results = FoodFacade.total_results_ingredient('Avocado')

    expect(total_results).to be_an(Integer)
  end
end
