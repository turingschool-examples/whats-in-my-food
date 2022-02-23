require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    data = {
            :gtinUpc=> "1234",
            :description=> "mmm potate",
            :brandOwner=> "Potato Lords",
            :ingredients=>"many potatoes"
    }

    food = Food.new(data)
    expect(food).to be_a(Food)
    expect(food.gtinupc).to eq("1234")
    expect(food.description).to eq("mmm potate")
    expect(food.brandowner).to eq("Potato Lords")
    expect(food.ingredients).to eq("many potatoes")
  end
end
