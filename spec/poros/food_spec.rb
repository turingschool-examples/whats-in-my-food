require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    data = {totalHits: 1, foods: [{gtinUpc: "5", description: "Yummy Food", brandOwner: "Yummy Food Makers", ingredients: "love"}]}
    food = Food.new(data)

    expect(food).to be_instance_of(Food)
    expect(food.gtin_upc).to eq("5")
    expect(food.description).to eq("Yummy Food")
    expect(food.brand_owner).to eq("Yummy Food Makers")
    expect(food.ingredients).to eq("love")
  end
end
