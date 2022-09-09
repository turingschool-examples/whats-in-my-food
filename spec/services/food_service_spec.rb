require 'rails_helper'

RSpec.describe FoodsService, :vcr do
  it "search by keyword" do
    service = FoodsService.new
    foods = service.search_by_keyword("sweet potatoes")[:foods]

    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(Hash)
    expect(foods.first).to have_key(:ingredients)
  end
end