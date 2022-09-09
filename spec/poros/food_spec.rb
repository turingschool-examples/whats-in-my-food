require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    data = {
      fdcId: 2,
      gtinUpc: 1337,
      lowercaseDescription: "Waffles",
      brandOwner: "Waffle-Copter",
      ingredients: "sugar + spice + everything nice"
    }
    food = Food.new(data)

    expect(food).to be_a Food
    expect(food.id).to eq(2)
    expect(food.code).to eq(1337)
    expect(food.description).to eq("Waffles")
    expect(food.owner).to eq("Waffle-Copter")
    expect(food.ingredients).to eq("Sugar + spice + everything nice")
  end
end