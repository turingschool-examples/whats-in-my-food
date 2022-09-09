require 'rails_helper'

RSpec.describe Food do
  before :each do
    @data = { 
      "fdcId": 983525,
      "description": "SWEET POTATOES",
      "lowercaseDescription": "sweet potatoes",
      "dataType": "Branded",
      "gtinUpc": "8901020020844",
      "publishedDate": "2020-06-26",
      "brandOwner": "NOT A BRANDED ITEM",
      "ingredients": "ORGANIC SWEET POTATOES.",
      "marketCountry": "United States",
      "foodCategory": "Pre-Packaged Fruit & Vegetables",
      "modifiedDate": "2020-04-13",
      "dataSource": "LI",
      "servingSizeUnit": "g",
      "servingSize": 133.0,
      "householdServingFullText": "133 GRM",
      "allHighlightFields": "<b>Ingredients</b>: ORGANIC <em>SWEET</em> <em>POTATOES</em>.",
      "score": 986.6137
    }

    @food = Food.new(@data)
  end

  it 'exists' do
    expect(@food).to be_a(Food)
  end

  it 'has attributes' do
    expect(@food.code).to eq('8901020020844')
    expect(@food.description).to eq('SWEET POTATOES')
    expect(@food.brand).to eq('NOT A BRANDED ITEM')
    expect(@food.ingredients).to eq('ORGANIC SWEET POTATOES.')
  end
end