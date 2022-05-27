require "rails_helper"

RSpec.describe Food do
  it "exists and has attributes" do
    data = {description: "Food Test Description"}
    food = Food.new(data)

    expect(food.description).to eq(data[:description])
    expect(food).to be_an_instance_of(Food)
  end
end
