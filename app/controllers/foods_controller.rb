class FoodsController < ApplicationController
  def index
    @food = params[:q]
    @results = FoodFacade.search(params[:q])
  end
end