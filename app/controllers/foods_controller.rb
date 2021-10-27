class FoodsController < ApplicationController
  def index
    @foods_results = FoodFacade.food_search(params[:q])
  end
end
