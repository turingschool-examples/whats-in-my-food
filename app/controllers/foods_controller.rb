class FoodsController < ApplicationController

  def index
    @foods = FoodFacade.find_food(params[:q])
  end
end
