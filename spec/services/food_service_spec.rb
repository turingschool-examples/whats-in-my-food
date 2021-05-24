require 'rails_helper'

describe 'food service test' do
  it 'can make a call to the api', :vcr do
    json_response = FoodService.request_api("search?query=sweet potatoes")

    expect(json_response).to be_a Hash
    expect(json_response[:foodSearchCriteria][:query]).to eq('sweet potatoes')
  end

  it 'can search for sweet potatoes', :vcr do
    json_response = FoodService.search("sweet potatoes")

    expect(json_response).to be_a Hash
    expect(json_response[:foodSearchCriteria][:query]).to eq('sweet potatoes')
  end
end