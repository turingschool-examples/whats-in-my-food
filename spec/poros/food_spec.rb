require "rails_helper"

RSpec.describe Food do
  it 'has attributes' do
    data = {
      gtinUpc: '123',
      description: 'stringy beans',
      brandOwner: 'evil.inc',
      ingredients: 'SOULS, GROUND SPIDERS'

    }
    food = Food.new(data)
  end
end
