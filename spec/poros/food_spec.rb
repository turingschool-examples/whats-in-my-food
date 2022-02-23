require 'rails_helper'

RSpec.describe Food do
  let(:food) do
    Food.new({
               gtinUpc: '454004',
               description: 'apple', brandOwner: 'TREECRISP 2 GO',
               ingredients: 'CRISP APPLE'
             })
  end
  describe '#initialize' do
    it 'exists' do
      actual = food
      expected = Food

      expect(actual).to be_a(expected)
    end
  end
  describe '#attributes' do
    it 'has an upc' do
      actual = food.gtin_upc
      expected = '454004'
      expect(actual).to eq(expected)
    end

    it 'has an description' do
      actual = food.description
      expected = 'apple'
      expect(actual).to eq(expected)
    end

    it 'has ingredients' do
      actual = food.ingredients
      expected = 'CRISP APPLE'
      expect(actual).to eq(expected)
    end

    it 'has an brand owner' do
      actual = food.brand_owner
      expected = 'TREECRISP 2 GO'
      expect(actual).to eq(expected)
    end
  end
end
