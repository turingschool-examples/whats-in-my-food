class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.food_search(params[:q]).take(10)
  end
end
