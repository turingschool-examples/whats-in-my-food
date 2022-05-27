require "rails_helper"

RSpec.describe FoodFacade do
  it "creates food poros", :vcr do
    food = FoodFacade.create_merchants
    expect(food).to be_an_instance_of(Food)
  end
end
