require 'rails_helper'

RSpec.describe Food do
  let!(:total_hits) { 49676 }

  let!(:food_attributes) { {
    gtinUpc: "8901020020844",
    description: "SWEET POTATOES",
    brandOwner: "NOT A BRANDED ITEM",
    ingredients: "ORGANIC SWEET POTATOES."
    } }

  let!(:sweet_potatoes) { Food.new(food_attributes, total_hits)}

  it 'exists' do

    expect(sweet_potatoes).to be_a(Food)
  end

  it 'has attributes' do
    expect(sweet_potatoes.total_hits).to eq(49676)
    expect(sweet_potatoes.gtin_upc).to eq("8901020020844")
    expect(sweet_potatoes.description).to eq("SWEET POTATOES")
    expect(sweet_potatoes.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(sweet_potatoes.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end
