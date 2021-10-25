require 'rails_helper'

RSpec.describe FoodItem do
  it 'exists and has attributes' do
      food_info = {gtinUpc: "86578968",
      description: "its food",
      brandOwner: "probably nestle",
      ingredients: 'potato'
      }
    food_item = FoodItem.new(food_info)
  end
end
