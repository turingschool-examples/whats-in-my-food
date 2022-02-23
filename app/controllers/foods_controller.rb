class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food_search(params[:q])
    @result_count = FoodFacade.result_count(params[:q])
  end
end