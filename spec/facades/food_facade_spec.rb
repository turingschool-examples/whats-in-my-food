require 'rails_helper'


RSpec.describe FoodFacade do

  it 'returns a food search result' do
    foods = FoodFacade.search_term('cheese')
    expect(foods).to be_a Array
    expect(foods).to be_all Food


  end 

end 