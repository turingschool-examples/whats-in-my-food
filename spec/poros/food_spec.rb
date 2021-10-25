require 'rails_helper'

RSpec.describe Food do
  it "exists and has attributes" do
    attrs = {:fdcId=>1929370,
     :description=>"SWEET POTATOES",
     :lowercaseDescription=>"sweet potatoes",
     :dataType=>"Branded",
     :gtinUpc=>"076700002019",
     :publishedDate=>"2021-07-29",
     :brandOwner=>"John W. Taylor Packing Co. Inc",
     :brandName=>"TAYLOR'S",
     :ingredients=>"SWEET POTATOES.",
     :marketCountry=>"United States",
     :foodCategory=>"Canned Vegetables",
     :allHighlightFields=>"<b>Ingredients</b>: <em>SWEET</em> <em>POTATOES</em>.",
     :score=>948.4067
   }
    food = Food.new(attrs)
    expect(food).to be_a Food
    expect(food.gtinUpc).to eq("076700002019")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brandOwner).to eq("John W. Taylor Packing Co. Inc")
    expect(food.ingredients).to eq("SWEET POTATOES.")
  end
end
