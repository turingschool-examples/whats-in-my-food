class FoodsController < ApplicationController
  def index
    @search_query = params[:q]
    @foods = FoodFacade.find_foods('sweet potatoes')
  end
end
