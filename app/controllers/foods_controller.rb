class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_foods(params[:search_query], 1).first(10)
    @num_results = FoodFacade.count_results(params[:search_query], 1)
  end
end
