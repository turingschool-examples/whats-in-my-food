require "rails_helper"

RSpec.describe FoodFacade do
  it "#ten_foods" do
    foods = FoodFacade.ten_foods("sweet potatos")

    expect(foods).to be_an(Array)
    expect(foods[0]).to be_a(FoodInfo)
  end
end
