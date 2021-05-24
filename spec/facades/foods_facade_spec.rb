require 'rails_helper'

describe FoodsFacade do
  it 'exists' do
    foods_facade = FoodsFacade.new
    
    expect(foods_facade).to be_an_instance_of(FoodsFacade)
  end

  it 'can search characters by population' do
    food_input   =  "sweet potatoes"
    foods_facade = FoodsFacade.search_by_food(food_input)

    expect(foods_facade.count).to eq(50)
    expect(foods_facade.first).to be_an_instance_of(Food)
  end

  it 'can return total food search count' do
    food_input   =  "sweet potatoes"
    foods_facade = FoodsFacade.searched_food_count(food_input)

    expect(foods_facade.class).to eq(Integer)
    expect(foods_facade).to eq(44128)
  end
end