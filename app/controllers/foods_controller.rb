class FoodsController < ApplicationController
  def index
    @total_results = FoodFacade.total_results_ingredient(params[:q])

    @foods = FoodFacade.foods_with_ingredient(params[:q])
  end
end
