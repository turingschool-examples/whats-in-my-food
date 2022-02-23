class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.get_foods_by_ingredient(params[:q])
  end
end
