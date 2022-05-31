require 'rails_helper'

RSpec.describe FoodService do
  it 'returns JSON data for matching 10 food items' do
    response = FoodService.search_food('cheese')
    expect(response).to be_a Hash
    expect(response[:foods].first[:brandOwner]).to eq('American Pride Food Corp.')
  end
end
