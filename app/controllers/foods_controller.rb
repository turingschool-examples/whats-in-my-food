class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food_search(params[:q])
    @results_count = FoodFacade.results_count(params[:q])
  end
end
