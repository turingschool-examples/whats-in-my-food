class FoodsController < ApplicationController
  def index
    @food_list = FoodFacade.find_food('sweet potatoes')
  end
end
