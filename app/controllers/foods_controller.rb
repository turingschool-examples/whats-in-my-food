class FoodsController < ApplicationController

  def index
     @foods = FoodsFacade.get_foods(params[:q])
     @food_count = FoodsFacade.count_foods(params[:q])
     # binding.pry
  end



end
