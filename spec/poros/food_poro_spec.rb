require 'rails_helper'

RSpec.describe 'Food Poro' do 
  it 'it exists and has attributes' do 
    data = {
      "fdcId": 2021456,
      "description": "CHEDDAR CHEESE",
      "lowercaseDescription": "cheddar cheese",
      "dataType": "Branded",
      "gtinUpc": "041497083411",
      "publishedDate": "2021-10-28",
      "brandOwner": "Weis Markets, Inc.",
      "brandName": "WEIS",
      "ingredients": "PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES AND ANNATTO [ VEGETABLE COLOR]. POTATO STARCH, CORN STARCH AND CALCIUM SULFATE ADDED TO PREVENT CAKING. NATAMYCIN (A NATURAL MOLD INHIBITOR). ",
      "marketCountry": "United States",
      "foodCategory": "Cheese",
      "modifiedDate": "2018-06-04",
      "dataSource": "LI",
      "packageWeight": "8 oz/227 g",
      "servingSizeUnit": "g",
      "servingSize": 28.0,
      "allHighlightFields": "<b>Ingredients</b>: PASTEURIZED MILK, <em>CHEESE</em> CULTURE, SALT, ENZYMES AND ANNATTO [ VEGETABLE COLOR]. POTATO STARCH, CORN",
      "score": 879.0597 }

    food = Food.new(data)

    expect(food.name).to eq('CHEDDAR CHEESE')
    expect(food.gtin_upc_code).to eq('041497083411')
    expect(food.brand_owner).to eq('Weis Markets, Inc.')
    expect(food.ingredients).to eq('PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES AND ANNATTO [ VEGETABLE COLOR]. POTATO STARCH, CORN STARCH AND CALCIUM SULFATE ADDED TO PREVENT CAKING. NATAMYCIN (A NATURAL MOLD INHIBITOR). ')
  end
end



