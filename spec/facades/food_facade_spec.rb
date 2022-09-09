require 'rails_helper'

RSpec.describe 'Food Facade' do 
  it 'returns an aray of food objects' do 

    array_of_food_objects = FoodDBFacade.searched_food_results("sweet potatoes")
    expect(array_of_food_objects).to be_a Array
    expect(array_of_food_objects).to be_all Food
  end

  it 'returns a top hits object' do 
    expect(FoodDBFacade.the_total_hits_for_search("sweet potatoes")).to be_a FoodTotalHits
  end
end



