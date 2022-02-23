require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    attrs = {
      gtinUpc: '39203902',
      description: 'This is a pizza',
      brandOwner: 'Pizza Queen',
      ingredients: 'Sauce, cheese'
    }

    food = Food.new(attrs)
    expect(food).to be_a Food
    expect(food.gtinupc).to eq('39203902')
    expect(food.description).to eq('This is a pizza')
    expect(food.brand_owner).to eq('Pizza Queen')
    expect(food.ingredients).to eq('Sauce, cheese')
  end
end
