class FoodsController < ApplicationController

  def index
    @food = FoodsFacade.foods_search(food_params)
  end
end
