class FoodsController < ApplicationController
  def index
    # binding.pry
    @foods = FoodFacade.search_food_by_keyword(params[:q])
    # @totalhits = params[:totalhits]
  end
end