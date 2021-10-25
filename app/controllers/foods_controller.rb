class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_results(params[:q])
    @total_hits = FoodFacade.total_results(params[:q])
  end
end
