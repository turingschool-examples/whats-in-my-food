class FoodsController < ApplicationController
  def index
    @results = FoodFacade.foods_search(params[:q])
    @info = FoodFacade.search_info(params[:q])
  end
end
