class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_foods(params[:search_query], 10)
    @num_results = FoodFacade.results_count(params[:search_query])
  end
end
