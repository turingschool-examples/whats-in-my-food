require 'rails_helper'

RSpec.describe 'Food PORO' do
  it 'create attributes' do
    food_data = {
      id: 600987,
      descripition: "SWEET POTATOES",
      brand: "The Pictsweet Company",
      ingredients: "SWEET POTATOES."
    }
    sweet_potato = Food.new(food_data)
    expect(sweet_potato.id).to eq(food_data[:id])
    expect(sweet_potato.descpription).to eq(food_data[:description])
    expect(sweet_potato.brand).to eq(food_data[:brand])
    expect(sweet_potato.ingredients).to eq(food_data[:ingredients])
  end
  
end
