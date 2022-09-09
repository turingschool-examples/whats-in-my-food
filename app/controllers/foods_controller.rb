class FoodsController < ApplicationController 
  def index 
    @foods = FoodFacade.search(params[:q])
    @count = FoodFacade.hit_count(params[:q])
    @search_term = params[:q]
    binding.pry 
  end
end