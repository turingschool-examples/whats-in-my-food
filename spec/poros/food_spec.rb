require 'rails_helper'

RSpec.describe Food do 
  it "exists and has attributes" do 
    response = JSON.parse(File.read('spec/fixtures/food.json'), symbolize_names: true)
    food = Food.new(response, 10) #FoodFacade takes in a food response and a count of 10 based on the range in the mapping
    # require 'pry'; binding.pry 
    expect(food).to be_a(Food)
    expect(food.brand_owner).to eq(response[:brand_owner])
    expect(food.code).to eq(response[:code])
    expect(food.description).to eq(response[:description])
    expect(food.ingredients).to eq(response[:ingredients])
  end
end