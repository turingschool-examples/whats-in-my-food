class FoodsController < ApplicationController
  def index
    @results = FoodFacade.food_search(params[:q])
    @count = FoodFacade.count
  end
end
