class FoodsController < ApplicationController
  def index
    # @foods = FoodsService.search_food(params[:q])
    @foods = FoodsFacade.search_food(params[:q])
    @food_title = FoodsFacade.search_food_query(params[:q])
    @food_total_results = FoodsFacade.search_food_total(params[:q])
  end
end
