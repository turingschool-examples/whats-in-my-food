require 'rails_helper'

RSpec.describe FoodService, :vcr do
  it "gets food data from the api" do
    food = FoodService.top_10("sweet potatoes")
    expect(food).to be_a(Hash)
    expect(food[:foods]).to be_an(Array)
  end
end
