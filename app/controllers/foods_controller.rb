class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.food_with(params[:q])
    @total = FoodsFacade.total_with(params[:q])
  end
end