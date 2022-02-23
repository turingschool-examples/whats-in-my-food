require 'rails_helper'

RSpec.describe Food do

it 'exists' do
  attributes = {
    gtinUpc: "076700002019",
    description: "sweet potatoes",
    brand_owner: "John W. Taylor Packing Co. Inc",
    ingredients: "SWEET POTATOES."
  }

  food = Food.new(attributes)

  expect(food).to be_a Food
  expect(food.gtinUpc).to be_a String
  expect(food.description).to be_a String
  expect(food.brand_owner).to be_a String
  expect(food.ingredients).to be_a String
end


end
