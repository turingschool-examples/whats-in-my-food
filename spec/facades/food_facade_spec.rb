require 'rails_helper'

RSpec.describe 'FoodFacade' do 

  it 'returns foods containing a keyword' do
    foods = FoodFacade.foods_by_keyword('sweet potatoes')

    expect(foods).to be_an(Array)
    expect(foods.first).to be_an_instance_of(Food)
  end

  it "can return the total number of hits for a search" do 
    foods = FoodFacade.count_foods("sweet potatoes")

    expect(foods).to eq(49676)
  end
end