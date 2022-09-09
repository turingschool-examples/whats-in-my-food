require "rails_helper"

RSpec.describe Food do
  it "exists" do
    total_hits = 9001
    attrs = {
      gtinUpc: "041497083411",
      lowercaseDescription: "cheddar cheese",
      brandOwner: "Weis Markets, Inc.",
      ingredients: "PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES AND ANNATTO [ VEGETABLE COLOR]. POTATO STARCH, CORN STARCH AND CALCIUM SULFATE ADDED TO PREVENT CAKING. NATAMYCIN (A NATURAL MOLD INHIBITOR)."
    }

    food = Food.new(total_hits, attrs)

    expect(food).to be_a Food
    expect(food.total_results).to eq 9001
    expect(food.gtin_upc_code).to eq("041497083411")
    expect(food.description).to eq("cheddar cheese")
    expect(food.brand_owner).to eq("Weis Markets, Inc.")
    expect(food.ingredients).to eq("PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES AND ANNATTO [ VEGETABLE COLOR]. POTATO STARCH, CORN STARCH AND CALCIUM SULFATE ADDED TO PREVENT CAKING. NATAMYCIN (A NATURAL MOLD INHIBITOR).")
  end
end