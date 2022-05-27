require 'rails_helper'


RSpec.describe Food do 

  it 'exists and has readable attributes' do
    data =  {
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
            "servingSizeUnit": "g"
             }
    food = Food.new(data)
    expect(food).to be_a Food
    expect(food.fdcid).to eq(451884)
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand_owner).to eq("NOT A BRANDED ITEM")
    expect(food.ingredients).to eq("")


  end 

end 