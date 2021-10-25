require 'rails_helper'
# testing guide:
    # - just like testing a plain old ruby class (mod 1)
    # - test attributes
    # - test methods

describe Food do
    it 'has attributes' do
        food_data = {
            "fdcId": 1929370,
            "description": "SWEET POTATOES",
            "lowercaseDescription": "sweet potatoes",
            "dataType": "Branded",
            "gtinUpc": "076700002019",
            "publishedDate": "2021-07-29",
            "brandOwner": "John W. Taylor Packing Co. Inc",
            "brandName": "TAYLOR'S",
            "ingredients": "SWEET POTATOES.",
            "marketCountry": "United States",
            "foodCategory": "Canned Vegetables",
            "allHighlightFields": "<b>Ingredients</b>: <em>SWEET</em> <em>POTATOES</em>.",
            "score": 948.4067,
            "foodNutrients": [
                {
                    "nutrientId": 1003,
                    "nutrientName": "Protein",
                    "nutrientNumber": "203",
                    "unitName": "G",
                    "derivationCode": "LCCS",
                    "derivationDescription": "Calculated from value per serving size measure",
                    "value": 0.88
                }]
              }


        food = Food.new(food_data)

        expect(food.description).to eq("SWEET POTATOES")
        expect(food.gtin).to eq("076700002019")
        expect(food.ingredients).to eq("SWEET POTATOES.")
        expect(food.brand_owner).to eq("John W. Taylor Packing Co. Inc")
    end
end
