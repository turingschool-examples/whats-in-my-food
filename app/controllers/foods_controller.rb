class FoodsController < ApplicationController
  def index
    food = params[:q]
    @foods = FoodFacade.search(food)
  end
end