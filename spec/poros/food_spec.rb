require 'rails_helper'

RSpec.describe Food do
  it "exists" do
    food = Food.new(gtin_upc: 123, description: "coffee", brand_owner: "Coffee Co.", ingredients: "coffee")

    expect(food).to be_an_instance_of(Food)
  end
end