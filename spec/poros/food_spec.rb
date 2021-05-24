require 'rails_helper'

describe 'Food' do
  it 'abstracts and encapsulates food data that can be read' do
    null = nil
    food_data = {
            "fdcId": 535125,
            "description": "SWEET POTATOES",
            "lowercaseDescription": "sweet potatoes",
            "dataType": "Branded",
            "gtinUpc": "492111402857",
            "publishedDate": "2019-04-01",
            "brandOwner": "ARCHER FARMS",
            "ingredients": "SWEET POTATOES.",
            "marketCountry": "United States",
            "foodCategory": "Frozen Prepared Sides",
            "allHighlightFields": "<b>Ingredients</b>: <em>SWEET</em> <em>POTATOES</em>.",
            "score": 922.7158
          }
    food = Food.new(food_data)

    expect(food.code).to eq "492111402857"
    expect(food.description).to eq "SWEET POTATOES"
    expect(food.owner).to eq "ARCHER FARMS"
    expect(food.ingredients).to eq "SWEET POTATOES."
  end
end
