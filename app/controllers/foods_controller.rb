class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.search_foods_by_ingredient(params[:q])
  end
end
