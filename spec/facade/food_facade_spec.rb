require 'rails_helper'

RSpec.describe 'Food Facade' do
  it 'makes service calls and returns an array of food objects', :vcr => 'foods_search' do
    foods = FoodFacade.search_food_by_keyword('Sweet Potatoes')

    expect(foods).to be_a Array
    expect(foods).to be_all Food
  end
end