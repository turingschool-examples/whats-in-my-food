class FoodsController < ApplicationController
  def index
    @total_foods = FoodsFacade.total_foods(params[:q])
  end
end
