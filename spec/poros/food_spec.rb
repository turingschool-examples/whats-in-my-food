require "rails_helper"

describe Food do
  it "exists and has attributes" do
    attributes = {
      gtinupc: "45",
      description: "Beef Wellington",
      brand_owner: "Ramsay Foods",
      ingredients: "Chateaubriand, mushrooms, prosciutto, mustard, salt, pepper, thyme, shallot, puff pastry"
    }

    welly = Food.new(attributes)

    expect(welly).to be_a Food
    expect(welly.name).to eq("45")
    expect(welly.description).to eq("Beef Wellington")
    expect(welly.name).to eq("Ramsay Foods")
    expect(welly.name).to eq("Chateaubriand, mushrooms, prosciutto, mustard, salt, pepper, thyme, shallot, puff pastry")
  end
end
