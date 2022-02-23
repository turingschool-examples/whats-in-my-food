require 'rails_helper'

RSpec.describe FoodFacade do 
  it 'finds the first to food items for a search' do 
    foods = FoodFacade.search_foods('sweet potatoes')

    expect(foods.first).to be_an_instance_of(Food)
    expect(foods.first.description).to eq("SWEET POTATOES")
    expect(foods.count).to eq(10)
  end
end