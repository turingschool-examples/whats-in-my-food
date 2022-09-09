require 'rails_helper'

RSpec.describe 'Food Poros' do
   it 'has attributes' do
      attributes = {
         brandOwner: "NOT A BRANDED ITEM",
         description: "SWEET POTATOES",
         gtinUpc: "8901020020844",
         ingredients: "ORGANIC SWEET POTATOES."
         }

      food = Food.new(attributes)

      expect(food.brand_owner).to eq("NOT A BRANDED ITEM")
      expect(food.description).to eq("SWEET POTATOES")
      expect(food.gtin_upc).to eq("8901020020844")
      expect(food.ingredients).to eq("ORGANIC SWEET POTATOES.")
   end
end