class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.get_list(params[:q])  
    @food_count = FoodsFacade.food_count(params[:q])
  end
end 