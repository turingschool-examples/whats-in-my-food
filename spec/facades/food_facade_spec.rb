require 'rails_helper'

RSpec.describe 'FoodFacade' do 

  it 'returns foods containing a keyword' do
    foods = FoodFacade.foods_by_keyword('sweet potatoes')

    expect(foods).to be_an(Array)
    expect(foods.first).to be_an_instance_of(Food)
  end

end