class FoodsController < ApplicationController
  def index
    @food = params[:q]
    @foods = FoodFacade.foods(@food)
  end
end
