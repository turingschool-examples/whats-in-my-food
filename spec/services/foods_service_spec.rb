require 'rails_helper'

RSpec.describe FoodsService, :vcr do
  it "search by keyword" do
    foods = FoodsService.food_search("sweet potatoes")

    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(Hash)
    expect(foods.first).to have_key(:ingredients)
  end
end
