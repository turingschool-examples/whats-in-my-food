class FoodsController < ApplicationController
  def results
    @foods = FoodsFacade.food_search(params[:q])
    @food_matches = FoodsFacade.food_matches(params[:q])
  end
end
