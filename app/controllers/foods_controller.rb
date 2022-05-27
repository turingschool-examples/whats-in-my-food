class FoodsController < ApplicationController
  def index
    @facades = FoodFacade.get_foods(params[:q])
  end
end
