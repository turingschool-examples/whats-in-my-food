require 'rails_helper'

describe Food do
  it 'has attributes' do
    food = Food.new(food_data)
    expect(food.brand).to eq("John W. Taylor Packing Co. Inc")
    expect(food.code).to eq("076700002019")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
