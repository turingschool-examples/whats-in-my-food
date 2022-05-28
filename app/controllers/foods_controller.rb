class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.get_list_of_foods(params[:q])
    @search_count = FoodsFacade.search_result_hits(params[:q])
    
  end
end
