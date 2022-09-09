require 'rails_helper'

RSpec.describe 'food facade' do
  it 'returns an array of foods given a search string' do
    results = FoodFacade.ingredient_search("sweet potatoes")

    expect(results).to be_an(Array)
  end
end