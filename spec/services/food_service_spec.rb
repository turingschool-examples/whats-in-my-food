require 'rails_helper'

RSpec.describe 'Movie Service' do
  it 'creates a connection object'do
    results = FoodService.conn
    expect(results.nil?).to eq(false)
  end
  it 'returns search results'do
  results = FoodService.search_foods("Sweet Potatoes")

    expect(results[:totalHits]).to eq(44128)
  end
end
