require 'rails_helper'

RSpec.describe Food do
  it 'exists' do 
    data = {
      gtinUpc: "123456789",
      description: "Snake Snax",
      brandOwner: "Pet Shop",
      ingredients: "Mice, Water"
    }

    food = Food.new(data)

    expect(food).to be_a Food
    expect(food.gtinUpc).to eq("123456789")
    expect(food.description).to eq("Snake Snax")
    expect(food.brand_owner).to eq("Pet Shop")
    expect(food.ingredients).to eq("Mice, Water")
  end
end