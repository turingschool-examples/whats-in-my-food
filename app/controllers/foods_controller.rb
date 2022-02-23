class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.find_foods(params[:q])
    binding.pry
  end
end
