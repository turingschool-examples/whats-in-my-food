class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food_finder(params[:q])
  end
end
