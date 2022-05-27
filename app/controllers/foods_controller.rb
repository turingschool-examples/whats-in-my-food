class FoodsController < ApplicationController


  def index
    if params[:q]
      @food = params[:q]
      @foods = FoodsFacade.find_foods(@food)
    end
  end
end
