class FoodsController < ApplicationController
  def query
    @query = params[:q]
    @search = FoodFacade.results(@query)
    @total = FoodFacade.total(@query)
  end
end