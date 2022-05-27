class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.search_by_ingredient(params[:q])
    binding.pry
  end
end
