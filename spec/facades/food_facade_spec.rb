require 'rails_helper'

RSpec.describe FoodFacade do
  it 'returns an array of search results' do
    result = FoodFacade.search_results('sweet potato')
    expect(result.size).to eq(10)
    expect(result).to be_a(Array)
    expect(result.first).to be_a(Food)
  end

  it 'returns an integer for total results' do
    result = FoodFacade.total_results('sweet potato')
    expect(result).to be_an Integer
  end
end
