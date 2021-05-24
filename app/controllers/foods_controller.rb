class FoodsController < ApplicationController
  require "./app/facades/food_facade.rb"

  def index
    food = params[:q]
    @foods = FoodFacade.get_food_items(food)
  end
end
