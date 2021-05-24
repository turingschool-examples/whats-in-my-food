class FoodsController < ApplicationController
  def index
    @searched_ingredient = params[:q]
    
    @total_results = FoodFacade.total_results_ingredient(@searched_ingredient)

    @foods = FoodFacade.foods_with_ingredient(@searched_ingredient)
  end
end
