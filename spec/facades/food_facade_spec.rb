require 'rails_helper'

RSpec.describe FoodFacade, :vcr do
  it "returns the total number of foods that contain the ingredient" do
    total = FoodFacade.total_hits("sweet potatoes")
    expect(total).to eq(49676)
  end

  it "returns the top 10 foods that contain the ingredient" do
    foods = FoodFacade.search("sweet potatoes")
    expect(foods.count).to eq(10)
  end
end
