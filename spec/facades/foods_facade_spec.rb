require 'rails_helper'

RSpec.describe FoodsFacade do

  it 'returns a food search result', :vcr do
    foods = FoodsFacade.food_search('cheese')

    expect(foods).to be_a Array
    expect(foods).to be_all Food
  end

end
