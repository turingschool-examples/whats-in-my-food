class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.search_by_food(params[:q])
    @hits = FoodsFacade.total_hits(params[:q])
  end
end
