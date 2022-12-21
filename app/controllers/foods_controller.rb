class FoodsController < ApplicationController

  def index
    if params[:q].empty?
      redirect_to "/", notice: "Search field cannot be blank!"
    else
      search_results = FoodFacade.ingredient_search(params[:q])

      @foods = search_results.first
      
      @total_result_count = search_results.last
    end
  end

end