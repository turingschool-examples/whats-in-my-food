require "rails_helper"

describe "FoodFacade" do
  it "returns an array food" do
    facade = FoodFacade.search("Sweet Potatoes")
    expect(facade).to be_an Array
    expect(facade.first).to be_a Food
  end

end
