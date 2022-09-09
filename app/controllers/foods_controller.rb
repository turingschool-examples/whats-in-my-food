class FoodsController < ApplicationController

  def index
    search_results = FoodFacade.ingredient_search(params[:q])
    
    @foods = search_results[0].first(10)
    @total_result_count = search_results.last
  end

end