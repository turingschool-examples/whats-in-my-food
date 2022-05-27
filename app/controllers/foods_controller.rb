class FoodsController < ApplicationController

  def index 
    @results = FoodFacade.top_foods(params[:q])
  end
end