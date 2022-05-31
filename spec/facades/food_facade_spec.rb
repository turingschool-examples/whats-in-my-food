require 'rails_helper'

RSpec.describe 'Food facade' do
  it 'returns the top 10 results' do
    results = FoodFacade.search_food('cheese')

    expect(results.count).to eq(10)
  end
end
