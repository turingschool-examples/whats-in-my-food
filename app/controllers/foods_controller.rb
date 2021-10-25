class FoodsController < ApplicationController

  def index
    @foods = FoodFacade.get_10(params[:q])
    @total_hits = FoodFacade.total_hits(params[:q])
  end
end
