class FoodsController < ApplicationController

  def index
    @foods = FoodSearchFacade.search_foods(food_params[:q]).take(10)
  end

  private

  def food_params
    params.permit(:q)
  end

end
