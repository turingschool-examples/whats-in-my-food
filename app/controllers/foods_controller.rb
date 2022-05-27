class FoodsController < ApplicationController
  def index
    @total_hits = FoodsFacade.total_hits(params[:q])
    @food_results = FoodsFacade.food_results(params[:q])
  end
end
