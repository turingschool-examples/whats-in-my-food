require 'rails_helper'

RSpec.describe Food do
  let(:apple) do
    Food.new({
      gtinUpc: "123456",
      description: 'keeps the doctor away',
      brandOwner: 'earth',
      ingredients: 'seed, sunlight, water'
      })

  end

  it 'has attributes', :vcr do
    expect(apple).to be_an_instance_of(Food)
    expect(apple.gtin).to eq("123456")
    expect(apple.brand).to eq("earth")
    expect(apple.ingredients).to eq("seed, sunlight, water")
    expect(apple.description).to eq("keeps the doctor away")
  end
end
