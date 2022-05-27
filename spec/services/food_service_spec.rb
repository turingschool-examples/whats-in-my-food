require 'rails_helper'

describe 'food service' do
  it 'returns a list of foods from a search' do
    response = FoodService.find_foods('chocolate chips')

    expect(response).to be_a Hash

    expect(response).to have_key(:totalHits)

    expect(response).to have_key(:foods)
  end
end
