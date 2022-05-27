require "rails_helper"

describe "Food PORO" do
  before do
    attributes = {
      gtinUpc: 123456789876,
      description: "Test Food number 1",
      brandOwner: "Test Food Brand Owner",
      ingredients: "Test Food, Test Cheese, Test Calories"
    }
    @test_food = Food.new(attributes)
  end
  it "exists and has attributes" do
    expect(@test_food.gtinupc).to eq(123456789876)
    expect(@test_food.description).to eq("Test Food number 1")
    expect(@test_food.brandowner).to eq("Test Food Brand Owner")
    expect(@test_food.ingredients).to eq("Test Food, Test Cheese, Test Calories")
  end
end
