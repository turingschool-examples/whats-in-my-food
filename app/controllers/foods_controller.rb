class FoodsController < ApplicationController

  def index
    @foods = FoodFacade.get_foods(params[:food])
  end


end