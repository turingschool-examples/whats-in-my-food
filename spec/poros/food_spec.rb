require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    total = {
      totalHits: 123
    }
      foods = {
        description: "SWEET POTATOES",
        brand: "NOT A BRANDED ITEM",
        ingredients: "ORGANIC SWEET POTATOES",
        gtinUpc: "1234"
      }

      food = Food.new(foods, total)

      expect(food).to be_an_instance_of(Food)
      expect(food.description).to eq("SWEET POTATOES")
      expect(food.ingredients).to eq("ORGANIC SWEET POTATOES")
      expect(food.gtinUpc).to eq("1234")
      # expect(food.brand).to eq("NOT A BRANDED ITEM")
  end
end
