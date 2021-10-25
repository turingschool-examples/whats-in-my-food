class FoodsController < ApplicationController

  def search
    # @foods = FoodFacade.food_search(params[:q])
    # @total_results = FoodService.search(params[:q])[:totalHits]
    @results = FoodFacade.food_search(params[:q])
  end

end
