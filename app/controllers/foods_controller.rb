class FoodsController < ApplicationController
  def index
    @food_count = FoodFacade.total_count(params[:q])
    @foods = FoodFacade.search_by_food(params[:q])
  end
end
