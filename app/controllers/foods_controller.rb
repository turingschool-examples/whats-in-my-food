class FoodsController < ApplicationController
  def index
    facade = FoodFacade.new
    @foods = facade.food_search(params[:q]).first(10)
  end
end
