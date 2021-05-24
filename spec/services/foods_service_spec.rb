require 'rails_helper'

describe FoodsFacade do
  it 'exists' do
    foods_facade = FoodsFacade.new
    
    expect(foods_facade).to be_an_instance_of(FoodsFacade)
  end

  it 'can search foods by search query' do
    search =  "fire nation"
    foods_facade = FoodsFacade.search_by_food(food_input)

    expect(foods_facade.count).to eq(97)
    expect(foods_facade.first).to be_an_instance_of(Character)
  end
end