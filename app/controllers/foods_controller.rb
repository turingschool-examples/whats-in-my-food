class FoodsController < ApplicationController
  def index
    foods = FoodSearchFacade.get_foods(params[:q])
  end
end