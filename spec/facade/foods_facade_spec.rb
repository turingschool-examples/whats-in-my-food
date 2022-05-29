require "rails_helper"

RSpec.describe FoodsFacade do
  it "creates food poros", :vcr do
    food = FoodsFacade.create_food("sweet potatoes")
    expect(food).to be_a(Array)
  end
end
