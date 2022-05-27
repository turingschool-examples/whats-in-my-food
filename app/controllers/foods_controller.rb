class FoodsController < ApplicationController
  def index
    @food_name  = params[:q]
    @food_count = FoodsFacade.total_items(params[:q])
    @ten_foods  = FoodsFacade.first_ten_foods(params[:q])
  end
end
