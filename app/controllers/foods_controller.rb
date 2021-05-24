class FoodsController < ApplicationController
  def index
    @results = FoodFacade.total_results(params[:q])
    @foods = FoodFacade.find_foods(params[:q])
  end
end
