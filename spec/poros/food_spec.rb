require 'rails_helper'

RSpec.describe Food do
  it 'can populate food fields from JSON response' do
    data = {
      'description': 'Cheddar Cheese',
      'gtinUPC': "8901020020844",
      'brandOwner': 'Kellog',
      'ingredients': 'cheese'
    }

    food = Food.new(data)
    expect(food).to be_a Food
    expect(food.description).to eq(data[:description])
    expect(food.gtinUPC).to eq(data[:gtinUPC])
    expect(food.brandOwner).to eq(data[:brandOwner])
    expect(food.ingredients).to eq(data[:ingredients])
  end
end