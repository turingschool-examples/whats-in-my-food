require 'rails_helper'

RSpec.describe FoodService do
  it 'will return data from the FDC' do
    response = FoodService.search('sweet potatoes')
# binding.pry
    expect(response).to be_a Hash
    first_response = response[:foods].first

    expect(first_response).to be_a Hash
    expect(first_response).to have_key :fdcId
    expect(first_response[:fdcId]).to be_a Integer
    expect(first_response).to have_key :description
    expect(first_response[:description]).to be_a String
    expect(first_response).to have_key :brandOwner
    expect(first_response[:brandOwner]).to be_a String
    expect(first_response).to have_key :ingredients
    expect(first_response[:ingredients]).to be_a String
  end
end
