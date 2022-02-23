class FoodsController < ApplicationController
  def index
    query = params[:q]
    @results = FoodFacade.search_for_food(query)
    @foods = @results.limit(10)
  end
end
