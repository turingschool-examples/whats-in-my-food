require 'rails_helper'

RSpec.describe Food do
  it "exists and has attributes" do
    attributes = {
      description: "sweet potatoes",
      gtinUpc: "492111402857",
      brandOwner: "ARCHER FARMS",
      ingredients: "SWEET POTATOES."
    }

    food_info = Food.new(attributes)

    expect(food_info).to be_an_instance_of(Food)
    expect(food_info.gtin_upc).to eq("492111402857")
    expect(food_info.description).to eq("sweet potatoes")
    expect(food_info.brand_owner).to eq("ARCHER FARMS")
    expect(food_info.ingredients).to eq("SWEET POTATOES.")
  end
end