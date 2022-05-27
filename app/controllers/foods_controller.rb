class FoodsController < ApplicationController
  def index
    binding.pry
    @foods = FoodFacade.search_by_ingredient(params[:q])
  end

end
