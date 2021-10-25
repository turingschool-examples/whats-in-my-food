class FoodsController < ApplicationController
  def search
  end

  def index
    @foods = FoodFacade.ten_food_search(params[:q])
    binding.pry
  end
end
