require 'rails_helper'

RSpec.describe Food do
    let!(:hits) { 50000 }

    let!(:attributes) { {
        gtinUpc: "85601201234567",
        description: "CHEDDARY CHEESE",
        brandOwner: "NOT A BRANDED ITEM",
        ingredients: "MILK PRODUCT."
    } }

    let!(:cheddar_cheese) { Food.new(attributes, hits)}

    it 'exists' do

        expect(cheddar_cheese).to be_a(Food)
    end

    it 'has attributes' do
        expect(cheddar_cheese.hits).to eq(50000)
        expect(cheddar_cheese.gtin_upc).to eq("85601201234567")
        expect(cheddar_cheese.description).to eq("CHEDDARY CHEESE")
        expect(cheddar_cheese.brand_owner).to eq("NOT A BRANDED ITEM")
        expect(cheddar_cheese.ingredients).to eq("MILK PRODUCT.")
    end
end