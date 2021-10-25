require 'rails_helper'

RSpec.describe Food do
  it 'exists and has attributes' do
    data = {
      brandOwner: "John W. Taylor Packing Co. Inc",
      description: "SWEET POTATOES",
      fdcId:      1929370,
      gtinUpc:    "076700002019",
      ingredients: "SWEET POTATOES."
    }
    food = Food.new(data)

    expect(food).to be_a(Food)
    expect(food.brand_owner).to eq("John W. Taylor Packing Co. Inc")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.fdc_id).to eq(1929370)
    expect(food.gtin_upc).to eq("076700002019")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
