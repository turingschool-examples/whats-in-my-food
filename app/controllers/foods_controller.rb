class FoodsController < ApplicationController
  def index
    @listed_foods = FoodFacade.first_10(params[:q])
    @hits = FoodFacade.returned(params[:q])
  end
end
