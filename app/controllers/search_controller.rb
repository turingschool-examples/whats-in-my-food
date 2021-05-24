class SearchController < ApplicationController
  def index
    @food_info = FoodFacade.foods_containing(params[:q])
    @food_count = FoodFacade.count_foods_containing(params[:q])
  end
end
