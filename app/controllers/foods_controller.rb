class FoodsController < ApplicationController
  def index
    @food_count = FoodsFacade.total_items(params[:q])
  end
end
