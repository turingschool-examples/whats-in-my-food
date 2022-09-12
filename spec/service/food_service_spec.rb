require 'rails_helper'

RSpec.describe 'Food Service' do
  it 'can retrieve food data and parse response' do
    parsed_json = FoodService.search_food_by_keyword('sweet potatoes')

    expect(parsed_json).to be_a Hash
    expect(parsed_json[:foods]).to be_a Array

    food = parsed_json[:foods].first
    # binding.pry
    expect(food).to include :description, :ingredients, :brandOwner, :gtinUpc
    expect(food[:description]).to be_a String
    expect(food[:gtinUpc]).to be_a String
    expect(food[:brandOwner]).to be_a String
    expect(food[:ingredients]).to be_a String
  end
end