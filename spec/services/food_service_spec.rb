require 'rails_helper'

describe FoodService do
  it 'can search for foods' do
    response = FoodService.search_foods('sweet potatoes')

    expect(response).to be_a Hash
    expect(response[:totalHits]).to be_an Integer
    expect(response[:foods]).to be_an Array

    foods = response[:foods]

    expect(foods.first).to be_a Hash
    expect(foods.first[:gtinUpc]).to be_a String
    expect(foods.first[:description]).to be_a String
    expect(foods.first[:brandOwner]).to be_a String
    expect(foods.first[:ingredients]).to be_a String
  end
end
