class FoodsController < ApplicationController

  def index
    data = FoodFacade.get_a_food(params[:q])
    binding.pry
  end
end
