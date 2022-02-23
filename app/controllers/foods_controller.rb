class FoodsController < ApplicationController
  def index
    @food = FoodService.all_food
  end
end 