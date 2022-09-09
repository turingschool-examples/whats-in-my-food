require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    food = Food.new({gtin_upc: '1', description: 'potato', brand_owner: 'test', ingredients: 'sweetness'})
    expect(food).to be_a(Food)
  end

  it 'has attributes' do
    food = Food.new({gtinUpc: '1', description: 'potato', brandOwner: 'test', ingredients: 'sweetness'})
    expect(food.gtinUpc).to eq('1')
    expect(food.description).to eq('potato')
    expect(food.brandOwner).to eq('test')
    expect(food.ingredients).to eq('sweetness')
  end
end