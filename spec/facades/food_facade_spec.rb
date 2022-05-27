require "rails_helper"

RSpec.describe "Food Facade" do
  it "returns foods by ingredient" do
    foods = FoodFacade.search_by_ingredient('sweet potatoes')

    expect(foods).to be_a Array
    expect(foods).to be_all Food
  end
end
