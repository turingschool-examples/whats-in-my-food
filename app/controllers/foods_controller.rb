class FoodsController < ApplicationController

  def index
    @foods = FoodsFacade.foods_search(params[:search_params])
    @food_count = FoodsService.total_foods("sweet%20potatoes")[:totalHits]
  end
end
