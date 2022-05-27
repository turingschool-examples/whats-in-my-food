class FoodsController < ApplicationController
  def index
    @total_results = FoodFacade.total_results(params[:q])
    @foods = FoodFacade.find_foods(params[:q]) 
  end
end
