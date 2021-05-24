require 'rails_helper'

describe 'Food' do
  it 'abstracts and encapsulates food data that can be read' do
    food =  Food.new(

    {
        "fdcId": 1103000,
        "description": "Potato, mashed, from restaurant",
        "lowercaseDescription": "potato, mashed, from restaurant",
        "commonNames": "",
        "additionalDescriptions": "",
        "dataType": "Survey (FNDDS)",
        "foodCode": 71501016,
        "publishedDate": "2020-10-30",
        "foodCategory": "Mashed potatoes and white potato mixtures",
        "allHighlightFields": "",
        "score": 213.06313,
        "brandOwner": "ARCHER FARMS",
        "gtinUpc": "492111402857",
        "ingredients": "SWEET POTATOES."
    }
)





  expect(food.upc).to eq "492111402857"
  expect(food.description).to eq "Potato, mashed, from restaurant"
  expect(food.brand_owner).to eq "ARCHER FARMS"
  expect(food.ingredients).to eq "SWEET POTATOES."
  end
end
