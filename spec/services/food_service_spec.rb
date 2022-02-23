require 'rails_helper'

RSpec.describe "Food Service" do
  it 'returns foods based upon query term "sweet potatoes"' do
    foods_data = FoodService.foods_containing_ingredient("sweet potatoes")

    expect(foods_data).to be_a Hash
    expect(foods_data[:foods]).to be_an Array

    first_food = foods_data[:foods].first
    binding.pry
    expect(first_food).to have_key :description
    expect(first_food).to have_key :gtinUpc
    expect(first_food).to have_key :ingredients
    expect(first_food).to have_key :brandOwner
  end
end
