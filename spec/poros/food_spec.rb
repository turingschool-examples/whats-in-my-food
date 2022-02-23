require 'rails_helper'

RSpec.describe Food, type: :poro do
  describe 'object' do
    it 'exists' do
      food_data = {
        fdcId: 2015943,
        description: "CHEDDAR CHEESE",
        lowercaseDescription: "cheddar cheese",
        dataType: "Branded",
        gtinUpc: "75925306223",
        publishedDate: "2021-10-28",
        brandOwner: "Three Square Inc.",
        brandName: "CRYSTAL FARMS",
        ingredients: "CHEDDAR CHEESE (PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES, ANNATTO COLOR), POTATO STARCH, STARCH AND CELLULOSE POWDER TO PREVENT CAKING, NATAMYCIN (MOLD INHIBITOR).",
        marketCountry: "United States",
        foodCategory: "Cheese",
        modifiedDate: "2021-02-25",
        dataSource: "LI",
        packageWeight: "8 oz/226 g",
        servingSizeUnit: "g",
        servingSize: 28,
        allHighlightFields: "<b>Ingredients</b>: <em>CHEDDAR</em> <em>CHEESE</em> (PASTEURIZED MILK, <em>CHEESE</em> CULTURE, SALT, ENZYMES, ANNATTO COLOR), POTATO STARCH",
        score: 862.79944,
        foodNutrients: [],
        finalFoodInputFoods: [],
        foodMeasures: [],
        foodAttributes: [],
        foodAttributeTypes: [],
        foodVersionIds: []
        }

      food = Food.new(food_data)

      expect(food).to be_a(Food)
      expect(food).to have_attributes(fdc_id: 2015943)
      expect(food).to have_attributes(gtin_upc_code: "75925306223")
      expect(food).to have_attributes(description: "CHEDDAR CHEESE")
      expect(food).to have_attributes(brand_owner: "Three Square Inc.")
      expect(food).to have_attributes(ingredients: "CHEDDAR CHEESE (PASTEURIZED MILK, CHEESE CULTURE, SALT, ENZYMES, ANNATTO COLOR), POTATO STARCH, STARCH AND CELLULOSE POWDER TO PREVENT CAKING, NATAMYCIN (MOLD INHIBITOR).")
    end
  end
end