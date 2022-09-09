require 'rails_helper'

RSpec.describe 'Food Facade' do 
  it 'returns an aray of food objects' do 

    array_of_food_objects = FoodDBFacade.searched_food_results("sweet potatoes")
    expect(array_of_food_objects).to be_a Array
    expect(array_of_food_objects).to be_all Food
  end
end



