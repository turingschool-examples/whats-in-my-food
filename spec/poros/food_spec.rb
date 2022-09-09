require 'rails_helper'

RSpec.describe Food do
  it "exists", :vcr do
    servce = FoodsService.food_search("sweet potatoes")
    facade = FoodsFacade.food_search("sweet potatoes")

    food = facade.first

    expect(food).to be_an_instance_of(Food)

    expect(food.gtinupc).to eq("8901020020844")
    expect(food.description).to eq("SWEET POTATOES")
    expect(food.brand).to eq("NOT A BRANDED ITEM")
    expect(food.ingredients).to eq("ORGANIC SWEET POTATOES.")
  end
end
