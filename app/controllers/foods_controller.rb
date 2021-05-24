class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.find_foods_by_ingredient(params[:q])
    @number_of_results = FoodFacade.find_number_of_results(params[:q])
  end
end