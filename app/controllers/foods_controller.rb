class FoodsController < ApplicationController
  def index
    @total_foods = FoodsFacade.total_foods(params[:q])
    @foods       = FoodsFacade.first_ten_foods(params[:q])
  end
end
