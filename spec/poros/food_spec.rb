require 'rails_helper'

RSpec.describe 'food poro' do
  it 'exists and has attributes' do
    food1 = Food.new(brandName: "Nestle Choco Chips", description: "chocolate chips", gtinUpc: "04656700781", brandOwner: "Raley's", ingredients: "sugar, chocolate, butter")

    expect(food1).to be_a(Food)
    expect(food1.description).to eq("chocolate chips")
    expect(food1.name).to eq("Nestle Choco Chips")
    expect(food1.code).to eq("04656700781")
    expect(food1.brand_owner).to eq("Raley's")
    expect(food1.food_ingredients).to eq("sugar, chocolate, butter")
  end
end
