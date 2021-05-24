class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.find_foods_by_ingredient(params[:q])
  end
end