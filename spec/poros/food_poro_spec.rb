require 'rails_helper'

RSpec.describe 'Food Poro' do 
  it 'it exists and has attributes' do 
    data = {
      "totalHits": 54739,
      "currentPage": 1,
      "totalPages": 1095,
      "pageList": [
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10
      ],
      "foodSearchCriteria": {
          "query": "Cheddar Cheese",
          "generalSearchInput": "Cheddar Cheese",
          "pageNumber": 1,
          "numberOfResultsPerPage": 50,
          "pageSize": 50,
          "requireAllWords": false
      },
      "foods": [
          {
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
              "score": 879.0597,
              "foodNutrients": [
                  {
                      "nutrientId": 1003,
                      "nutrientName": "Protein",
                      "nutrientNumber": "203",
                      "unitName": "G",
                      "derivationCode": "LCCS",
                      "derivationDescription": "Calculated from value per serving size measure",
                      "derivationId": 70,
                      "value": 25.0,
                      "foodNutrientSourceId": 9,
                      "foodNutrientSourceCode": "12",
                      "foodNutrientSourceDescription": "Manufacturer's analytical; partial documentation",
                      "rank": 600,
                      "indentLevel": 1,
                      "foodNutrientId": 26203678 } ]
                  } ]
                }

    food = Food.new(data)
    binding.pry
    expect(food.name).to eq('CHEDDAR CHEESE')
    expect(food.gtin_upc_code).to eq('041497083411')
    expect(food.brand_owner).to eq('Weis Markets, Inc.')
    expect(food.ingredients).to eq('PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES AND ANNATTO [ VEGETABLE COLOR]. POTATO STARCH, CORN STARCH AND CALCIUM SULFATE ADDED TO PREVENT CAKING. NATAMYCIN (A NATURAL MOLD INHIBITOR). ')
  end
end



