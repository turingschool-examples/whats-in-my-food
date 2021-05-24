class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food_info(params[:q])
  end
end
