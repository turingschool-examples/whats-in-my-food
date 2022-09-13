require 'rails_helper'

RSpec.describe FoodFacade do 
  it "gets data for food by ingredient", :vcr do 
    foods = FoodFacade.create_foods('sweet potatoes')
    # require 'pry'; binding.pry 
    expect(foods[0]).to be_a(Food)
    expect(foods.count).to eq(10) #this needs to be 10
  end
end