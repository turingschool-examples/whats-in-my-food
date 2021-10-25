require 'rails_helper'

RSpec.describe 'FoodFacade' do
  it 'returns all movies related to query', :vcr do
    foods = FoodFacade.search("sweet potatoes")

    expect(foods).to be_a(Hash)

    expect(foods).to have_key :total_hits
    expect(foods[:total_hits]).to be_a Integer

    expect(foods).to have_key(:foods)
    expect(foods[:foods]).to be_a Array
    expect(foods[:foods].count).to eq(10)
    expect(foods[:foods].first.gtinUpc).to eq("076700002019")
  end
end
