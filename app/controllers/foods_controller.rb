class FoodsController < ApplicationController
  def index
    @query = params[:q]
    @foods = FoodsFacade.food_with(params[:q])
    @total = FoodsFacade.total_with(params[:q])
  end
end