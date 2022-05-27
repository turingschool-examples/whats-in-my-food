require "rails_helper"

describe Food do
  it "exists and has attributes" do
    attributes = {
      gtinUpc: "45",
      description: "Beef Wellington",
      brandOwner: "Ramsay Foods",
      ingredients: "Chateaubriand, mushrooms, prosciutto, mustard, salt, pepper, thyme, shallot, puff pastry"
    }

    welly = Food.new(attributes)

    expect(welly).to be_a Food
    expect(welly.gtinupc).to eq("45")
    expect(welly.description).to eq("Beef Wellington")
    expect(welly.brand_owner).to eq("Ramsay Foods")
    expect(welly.ingredients).to eq("Chateaubriand, mushrooms, prosciutto, mustard, salt, pepper, thyme, shallot, puff pastry")
  end
end
