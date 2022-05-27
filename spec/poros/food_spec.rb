require 'rails_helper'

RSpec.describe 'Food' do
  describe 'initialize' do
    it 'exists and has readable attributes' do
      data = {
        gtinUpc: "451884",
        description: "SWEET POTATOES",
        brandOwner: "NOT A BRANDED ITEM",
        ingredients: "You guessed it, sweet potatoes"
      }

      food = Food.new(data, 49652)
      expect(food.code).to eq(data[:gtinUpc])
      expect(food.description).to eq(data[:description])
      expect(food.brand).to eq(data[:brandOwner])
      expect(food.ingredients).to eq(data[:ingredients])
      expect(food.total_count).to eq(49652)
    end
  end
end
