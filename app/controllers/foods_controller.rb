class FoodsController < ApplicationController
  def index
    @food = params[:q]
    if @food.nil?
      redirect_to root_path
    else
      @foods = FoodFacade.all_foods(@food)
    end
  end
end
