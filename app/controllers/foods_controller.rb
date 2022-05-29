class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.create_food(params[:query])
  end
end
