class FoodsController < ApplicationController 
  def index 
    @ingredient = params[:ingredient]
    @foods = FoodFacade.create_foods(@ingredient)
  end
end