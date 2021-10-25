require 'rails_helper'

RSpec.describe 'food poro' do
  it 'exists and has attributes' do
    oat_milk = Food.new(gtin_code: "8239084093", description: "I cant believe its not milk!", brand_owner: "the oat people", ingredients: "oats!")

    expect(oat_milk).to be_a(Food)
    expect(oat_milk.gtin_code).to eq("8239084093")
    expect(oat_milk.gtin_code).to eq("I cant believe its not milk!")
    expect(oat_milk.gtin_code).to eq("the oat people")
    expect(oat_milk.gtin_code).to eq("oats!")
  end
end
