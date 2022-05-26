class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_for_foods(params[:q])
  end
end
