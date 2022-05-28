require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    food_1 = Food.new({gtinUpc: '456TCPGGG',
                    description: 'APPLE',
                    brandOwner: 'TREECRISP 2 go',
                    ingredients: 'CRISP APPLE'})

    expect(food_1).to be_a(Food)
  end

  it 'has attributes' do
    food_1 = Food.new({gtinUpc: '456TCPGGG',
                    description: 'APPLE',
                    brandOwner: 'TREECRISP 2 go',
                    ingredients: 'CRISP APPLE'})

    expect(food_1.gtinUpc).to eq('456TCPGGG')
    expect(food_1.description).to eq('APPLE')
    expect(food_1.brandOwner).to eq('TREECRISP 2 go')
    expect(food_1.ingredients).to eq('CRISP APPLE')
  end

end
