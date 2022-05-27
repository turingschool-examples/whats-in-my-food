require 'rails_helper'

RSpec.describe Food do
  data = {
    gtinUpc: 12345,
    description: "Classic 'Za",
    brandOwner: "'Za LTD",
    ingredients: "Cheese, dough, pepperoni"
  }

  it 'Has all attributes' do
    pizza = Food.new(data)

    expect(pizza.gtinUpc).to eq 12345
    expect(pizza.description).to eq "Classic 'Za"
    expect(pizza.brandOwner).to eq "'Za LTD"
    expect(pizza.ingredients).to eq "Cheese, dough, pepperoni"
  end
end