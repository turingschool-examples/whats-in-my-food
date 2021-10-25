require 'rails_helper'

RSpec.describe 'foods facade' do
  it '#foods_search' do

    foods = FoodsFacade.foods_search("sweet%20potatoes")

    expect(foods).to be_an(Array)
    expect(foods.first).to be_a(Food)
    expect(foods.first.gtin_code).to be_a(String)
    expect(foods.first.description).to be_a(String)
    expect(foods.first.brand_owner).to be_a(String)
    expect(foods.first.ingredients).to be_a(String)
  end
end
