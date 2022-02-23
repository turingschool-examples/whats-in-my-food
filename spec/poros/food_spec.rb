require 'rails_helper'

RSpec.describe Food do
  it 'exists and has attributes' do
    food_data = {gtinUpc: "upc", description: "Description", brandOwner: "Brand Owner", ingredients: "Ingredients"}
    food = Food.new(food_data)
    expect(food).to be_an_instance_of(Food)
    expect(food.upc).to eq("upc")
    expect(food.description).to eq("Description")
    expect(food.brand_owner).to eq("Brand Owner")
    expect(food.ingredients).to eq("Ingredients")
  end
end
