class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.get_list(params[:q])  
    @food_count = FoodFacade.food_count(params[:q])
  end
end 