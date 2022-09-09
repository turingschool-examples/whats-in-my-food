require 'rails_helper'

RSpec.describe Food do
  it 'exists and has the correct attributes' do
    # response = JSON.parse(File.read('spec/fixures/food_search_response.json'), symbolize_names: true)
    total_hits = 49676
    attrs = {
      gtinUpc: "8901020020844",
      lowercaseDescription: "sweet potatoes",
      brandOwner: "NOT A BRANDED ITEM",
      ingredients: "ORGANIC SWEET POTATOES"
    }

    food_results = Food.new(total_hits, attrs)

    expect(food_results.total_hits).to eq(49676)
    expect(food_results.gtin_upc_code).to eq('8901020020844')
    expect(food_results.description).to eq("sweet potatoes")
    expect(food_results.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food_results.ingredients).to eq("ORGANIC SWEET POTATOES")
  end
end
