class FoodsController < ApplicationController
  def index
    binding.pry
    @food = FoodService.all_food
  end
end 