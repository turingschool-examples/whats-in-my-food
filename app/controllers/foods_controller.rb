class FoodsController < ApplicationController
  def index
    @total_items = FoodFacade.items_returned(params[:q])
    @foods = FoodFacade.search(params[:q])
  end
end