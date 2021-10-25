class FoodsController < ApplicationController

  def search
    @results = FoodFacade.food_search(params[:q])
  end

end
