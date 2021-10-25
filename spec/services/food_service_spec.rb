require 'rails_helper'

RSpec.describe FoodService do
  it "can search for foods", :vcr do
    response = FoodService.search("sweet+potatoes")

    expect(response).to be_a Hash

    expect(response).to have_key :totalHits
    expect(response[:totalHits]).to be_an Integer

    expect(response).to have_key :foods
    expect(response[:foods]).to be_an Array

    first_result = response[:foods].first

    expect(first_result).to have_key :gtinUpc
    expect(first_result[:gtinUpc]).to be_a String

    expect(first_result).to have_key :description
    expect(first_result[:description]).to be_a String

    expect(first_result).to have_key :brandOwner
    expect(first_result[:brandOwner]).to be_a String

    expect(first_result).to have_key :ingredients
    expect(first_result[:ingredients]).to be_a String
  end
end
