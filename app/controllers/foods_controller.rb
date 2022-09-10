class FoodsController < ApplicationController 
  def index 
    # @ingredient = params[:ingredient]
    @ingredient = params[:q]
    @foods = FoodFacade.create_foods(@ingredient)
  end
end