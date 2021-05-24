class FoodsController < ApplicationController
  def index
    @food_list = FoodFacade.find_food(params[:q])
  end
end
