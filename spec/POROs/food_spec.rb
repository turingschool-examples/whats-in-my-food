require 'rails_helper'

RSpec.describe Item do
  context 'initialization' do
    it 'is initialized with a JSON hash' do
      data = {
        "fdcId": 451884,
        "description": "SWEET POTATOES",
        "lowercaseDescription": "sweet potatoes",
        "dataType": "Branded",
        "gtinUpc": "832298010009",
        "publishedDate": "2019-04-01",
        "brandOwner": "NOT A BRANDED ITEM",
        "ingredients": "",
        "marketCountry": "United States",
        "foodCategory": "Pre-Packaged Fruit & Vegetables",
        "modifiedDate": "2018-02-16",
        "dataSource": "LI",
        "servingSizeUnit": "g",
        "servingSize": 130.0,
        "householdServingFullText": "1 .PETITE POTATO",
        "allHighlightFields": "",
        "score": 987.41956
      }

      food = Food.new(data)

      expect(food).to be_a Food
    end

    it 'has readable attributes' do
      data = {
        "fdcId": 451884,
        "description": "SWEET POTATOES",
        "lowercaseDescription": "sweet potatoes",
        "dataType": "Branded",
        "gtinUpc": "832298010009",
        "publishedDate": "2019-04-01",
        "brandOwner": "NOT A BRANDED ITEM",
        "ingredients": "fine potatoes straight from the earth",
        "marketCountry": "United States",
        "foodCategory": "Pre-Packaged Fruit & Vegetables",
        "modifiedDate": "2018-02-16",
        "dataSource": "LI",
        "servingSizeUnit": "g",
        "servingSize": 130.0,
        "householdServingFullText": "1 .PETITE POTATO",
        "allHighlightFields": "",
        "score": 987.41956
      }

      food = Food.new(data)

      expect(food.id).to eq 451884
      expect(food.description).to eq 'sweet potatoes'
      expect(food.gtin_upc).to eq "832298010009"
      expect(food.ingredients).to eq('fine potatoes straight from the earth')
    end
  end
end
