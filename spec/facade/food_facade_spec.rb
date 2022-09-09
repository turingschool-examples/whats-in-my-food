require 'rails_helper'

RSpec.describe FoodFacade do 
  it "gets data for food by ingredient", :vcr do 
    foods = FoodFacade.create_foods('sweet potatoes')

    expect(foods[0]).to be_a(Food)
  end
end