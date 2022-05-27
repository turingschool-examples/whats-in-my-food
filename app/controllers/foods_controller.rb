class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_by_ingredient(params[:q])
  end
end
