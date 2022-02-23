class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_foods(params[:q])
    @ingredient = params[:q]
  end
end