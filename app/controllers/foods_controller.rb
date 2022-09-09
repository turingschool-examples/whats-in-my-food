class FoodsController < ApplicationController
  def index
    @food = params[:q]
    @results = FoodFacade.search(params[:q])
    @total_hits = FoodFacade.total_hits(params[:q])
  end
end