require 'rails_helper'

RSpec.describe FoodPoro, :vcr do
  it "returns food objects that contain the ingredient" do
    foods = FoodFacade.search("sweet potatoes")
    expect(foods.count).to eq(10)
    expect(foods.first).to be_a(FoodPoro)
    expect(foods.first.description).to eq("SWEET POTATOES")
    expect(foods.first.upc).to eq("8901020020844")
    expect(foods.first.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(foods.first.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end
