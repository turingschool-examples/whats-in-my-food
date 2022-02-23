require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    hits = 15
    attributes = {
      :gtinUpc=>"864315",
      :description=>"Description",
      :brandOwner=>"Brand Owner",
      :ingredients=>"Ingredients"
      }
    food = Food.new(attributes, hits)
    expect(food).to be_a Food
    expect(food.hits).to eq(15)
    expect(food.gtinUpc).to eq("864315")
    expect(food.description).to eq("Description")
    expect(food.brandOwner).to eq("Brand Owner")
    expect(food.ingredients).to eq("Ingredients")
  end
end
