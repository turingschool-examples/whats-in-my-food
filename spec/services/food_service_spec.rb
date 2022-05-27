require 'rails_helper'

RSpec.describe 'Food Service' do
  it 'searches for relevant foods by ingredient' do
    search = FoodService.search_by_ingredient('sweet potatoes')

    expect(search).to be_a Hash
    expect(search[:foods]).to be_a Array

    food = search[:foods].first
    expect(food).to have_key :gtinUpc
    expect(food[:gtinUpc]).to be_a String
    expect(food).to have_key :description
    expect(food[:description]).to be_a String
    expect(food).to have_key :description
    expect(food[:description]).to be_a String
    expect(food).to have_key :brandOwner
    expect(food[:brandOwner]).to be_a String
    expect(food).to have_key :ingredients
    expect(food[:ingredients]).to be_a String
  end
end
