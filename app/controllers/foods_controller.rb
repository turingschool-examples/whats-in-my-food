class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_for_foods(params[:q])
    @total_results = FoodFacade.total_results(params[:q])
  end
end
