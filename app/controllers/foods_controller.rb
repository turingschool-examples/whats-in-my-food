class FoodsController < ApplicationController

  def index
    @foods = FoodFacade.get_foods(params[:food])
    @total_count = FoodFacade.get_total_foods(params[:food])
  end


end