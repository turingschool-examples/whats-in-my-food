require 'rails_helper'

RSpec.describe FoodItem do
  it 'exists and has attributes' do
    food_info = {gtinUpc: "86578968",
      description: "its food",
      brandOwner: "probably nestle",
      ingredients: 'potato'
      }
    food_item = FoodItem.new(food_info)

    expect(food_item.gtin_upc).to eq(food_info[:gtinUpc])
    expect(food_item.description).to eq(food_info[:description])
    expect(food_item.brand_owner).to eq(food_info[:brandOwner])
    expect(food_item.ingredients).to eq(food_info[:ingredients])
  end
end
