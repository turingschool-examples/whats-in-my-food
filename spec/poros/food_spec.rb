
require 'rails_helper'

RSpec.describe 'food poro' do
  it 'has params' do
    params = {gtinUpc: "12345",
              description: "spaghetti",
              brandOwner: "Kroger",
              ingredients: "semolina"}

    food = Food.new(params)

    expect(food.upc).to eq(params[:gtinUpc])
    expect(food.description).to eq(params[:description])
    expect(food.brand_owner).to eq(params[:brandOwner])
    expect(food.ingredients).to eq(params[:ingredients])
  end
end
