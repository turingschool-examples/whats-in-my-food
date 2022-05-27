class FoodsController < ApplicationController
  def index
    @search_info = FoodsFacade.food_search(params[:q])
    @foods = FoodsFacade.ten_results(@search_info.with_ingredient(params[:q]))
  end
end
