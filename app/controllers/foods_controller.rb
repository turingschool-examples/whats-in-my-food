class FoodsController < ApplicationController

  def index
    FoodFacade.get_a_food(params[:q])
  end
end
