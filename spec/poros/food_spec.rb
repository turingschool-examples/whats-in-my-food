require 'rails_helper'

RSpec.describe 'food proro' do
  let!(:data) {{code: "75925306223",
              description: "CHEDDAR CHEESE",
              brand: "Three Square Inc.",
              ingredients: "CHEDDAR CHEESE (PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES, ANNATTO COLOR), POTATO STARCH, STARCH AND CELLULOSE POWDER TO PREVENT CAKING, NATAMYCIN (MOLD INHIBITOR)."
              }}

  it "exists" do
    expect(Food.new(data)).to be_a(Food)
  end

  it "has attributes" do
    expect(Food.new(data).code).to eq("75925306223")
    expect(Food.new(data).description).to eq("CHEDDAR CHEESE")
    expect(Food.new(data).brand).to eq("Three Square Inc.")
    expect(Food.new(data).ingredients).to eq("CHEDDAR CHEESE (PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES, ANNATTO COLOR), POTATO STARCH, STARCH AND CELLULOSE POWDER TO PREVENT CAKING, NATAMYCIN (MOLD INHIBITOR).")
  end
end
