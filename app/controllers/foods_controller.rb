class FoodsController < ApplicationController
  def index
    @foods, @total_hits = FoodsFacade.search_foods(params[:q])
  end
end
