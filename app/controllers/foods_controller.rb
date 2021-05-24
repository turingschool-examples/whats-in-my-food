class FoodsController < ApplicationController
   def index
    food_input = 'sweet potatoes'
    @food_response = FoodFacade.foods(food_input)
  end
end
