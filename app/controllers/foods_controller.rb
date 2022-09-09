class FoodsController < ApplicationController

  def search
    @food_results = FoodFacade.create_food_search(params[:q])
  end
end