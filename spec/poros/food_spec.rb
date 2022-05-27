require "rails_helper"

RSpec.describe Food do
  it "exits" do
    data = {
      gtinUpc: "292374",
      description: "finger lickin gewd",
      brandOwner: "The Colonel",
      ingredients: "the ole spices and YEE ole Love n passion"
    }

    food = Food.new(data)

    expect(food.gtinUpc).to eq("292374")
    expect(food.description).to eq("finger lickin gewd")
    expect(food.brandOwner).to eq("The Colonel")
    expect(food.ingredients).to eq("the ole spices and YEE ole Love n passion")
  end
end
