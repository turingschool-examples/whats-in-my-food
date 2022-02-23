class FoodsController < ApplicationController
  def index
    @results = FoodFacade.food_search(params[:q])
    @info = FoodFacade.search_info(params[:q])
  end
end
