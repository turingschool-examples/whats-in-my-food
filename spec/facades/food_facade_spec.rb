require 'rails_helper'

RSpec.describe FoodFacade do 
  it 'finds the first ten food items for a search' do 
    foods = FoodFacade.search_foods('sweet potatoes')

    expect(foods[:foods].first).to be_an_instance_of(Food)
    expect(foods[:foods].first.description).to eq("SWEET POTATOES")
    expect(foods[:foods].count).to eq(10)
    expect(foods[:total_results]).to eq(48008)
  end
end