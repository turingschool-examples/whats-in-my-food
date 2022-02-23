class FoodsController < ApplicationController 
  def index 
    data = FoodFacade.search_foods(params[:q])
    @foods = data[:foods]
    @results = data[:total_results]
  end
end