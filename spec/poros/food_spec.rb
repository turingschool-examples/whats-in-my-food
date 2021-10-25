require "rails_helper"

RSpec.describe Food do
  it 'has attributes' do
    data = {
      gtinUpc: '123',
      description: 'stringy beans',
      brandOwner: 'evil.inc',
      ingredients: 'SOULS, GROUND SPIDERS, CORN STARCH'

    }
    food = Food.new(data)
    expect(food.id).to eq('123')
    expect(food.description).to eq('stringy beans')
    expect(food.owner).to eq('evil.inc')
    expect(food.ingredients).to eq('SOULS, GROUND SPIDERS, CORN STARCH')
  end
end
