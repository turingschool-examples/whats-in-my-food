class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.get_foods(params[:q])
  end
end
