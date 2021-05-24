require "rails_helper"

describe "FoodFacade" do
  it "returns an array food with only 10 items" do
    facade = FoodFacade.search("Sweet Potatoes")
    expect(facade).to be_an Array
    expect(facade.first).to be_a Food
    expect(facade.count).to eq(10)
  end
  it "returns total results" do
  facade = FoodFacade.total_results("Sweet Potatoes")
  expect(facade).to eq(44128)
  end
end
