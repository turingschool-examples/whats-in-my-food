class FoodsController < ApplicationController
  def index
    @results_count = FoodService.search_by_ingredient(params[:q])[:totalHits]
    @ingredient = params[:q]
    @foods = FoodFacade.search_by_ingredient(params[:q])
  end
end
