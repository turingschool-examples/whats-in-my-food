class FoodsController < ApplicationController

  def index
    @results = FoodSearchFacade.search_foods(food_params[:q])
    @foods = @results.take(10)
  end

  private

  def food_params
    params.permit(:q)
  end

end
