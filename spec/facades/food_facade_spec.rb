require 'rails_helper'

RSpec.describe 'FoodFacade' do
  it "returns an array of food objects" do
    stub_food_request
    facade = FoodFacade.get_food_items("sweet potatoes")
    expect(facade).to be_an Array
    expect(facade.first).to be_a FoodItem
  end
end
