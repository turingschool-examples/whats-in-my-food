require 'rails_helper'

RSpec.describe 'FoodsFacade', vcr: 'sweet_potatoes' do
  it 'returns instances of food with given ingredient' do
    foods = FoodsFacade.food_with('sweet potatoes')
    expect(foods).to be_a(Array)
    expect(foods.first).to be_a(Food)
    expect(foods.first.code).to be_a(String)
    expect(foods.last.description).to be_a(String)
    expect(foods.first.brand).to be_a(String)
    expect(foods.last.ingredients).to be_a(String)
  end

  it 'returns total number of results' do
    total = FoodsFacade.total_with('sweet potatoes')
    expect(total).to eq(49676)
  end
end