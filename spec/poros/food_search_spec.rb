require 'rails_helper'

RSpec.describe FoodSearch do

  before(:each) do
    foods = {
      gtinUpc: "123456",
      description: "fluffy",
      brandOwner: "Jif",
      ingredients: "Marshmallows"
    }

    @food = FoodSearch.new(foods)
  end

  it 'has attributes' do
    expect(@food.upc).to eq("123456")
    expect(@food.description).to eq("fluffy")
    expect(@food.brand_owner).to eq("Jif")
    expect(@food.ingredients).to eq("Marshmallows")
  end

end
