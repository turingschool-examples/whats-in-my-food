class FoodsController < ApplicationController
  def index
    @search_info = FoodsFacade.food_search(params[:q])
    @foods = @search_info.with_ingredient(params[:q])
  end
end
