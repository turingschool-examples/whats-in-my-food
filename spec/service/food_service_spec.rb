require 'rails_helper'

RSpec.describe 'Food Service' do
  it 'can retrieve food data and parse response' do
    parsed_json = FoodService.search_food_by_keyword('sweet potatoes')

    expect(parsed_json).to be_a Hash
    
    expect(parsed_json[:foods]).to be_a Array

    food = parsed_json[:foods].first
    expect(food).to include :description, :gtinUPC, :brandOwner, :ingredients
    expect(food[:description]).to be_a String
    expect(food[:gtinUPC]).to be_a String
    expect(food[:brandOwner]).to be_a String
    expect(food[:ingredients]).to be_a String
  end
end