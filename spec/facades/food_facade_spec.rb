require 'rails_helper'

describe FoodFacade do
  it 'can find foods' do
    foods = FoodFacade.find_foods('sweet potatoes')

    expect(foods.first).to be_a Food
    expect(foods.first.id).to eq(2)
  end
end
