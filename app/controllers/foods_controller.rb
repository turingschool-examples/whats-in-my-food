class FoodsController < ApplicationController
  def index
    require "pry"; binding.pry
    food = params[:q]
    @foods = FoodFacade.get_food_items(food)
  end
end
