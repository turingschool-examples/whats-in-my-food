require 'rails_helper'

RSpec.describe Food do 
  it 'has attributes' do 
    data = {
      fdcId: 983525,
      description: "SWEET POTATOES",
      brandOwner: "NOT A BRANDED ITEM",
      ingredients: "ORGANIC SWEET POTATOES."
    }

    food = Food.new(data)

    expect(food).to be_an_instance_of(Food)
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end