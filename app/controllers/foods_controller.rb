class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.ten_foods(params[:q])
  end
end
