require 'rails_helper'

describe 'food item class' do
  it 'exists', :vcr do
    food_list = FoodFacade.find_food('sweet potatoes')

    expect(food_list.foods.first).to be_a FoodItem
    expect(food_list.foods.first).to have_attributes(brand_owner: 'ARCHER FARMS',
                                                     description: "SWEET POTATOES",
                                                     gtin_upc: "492111402857",
                                                     ingredients: "SWEET POTATOES.")
  end
end