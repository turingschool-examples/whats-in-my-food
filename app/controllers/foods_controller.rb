class FoodsController < ApplicationController 

  def index  
    @foods = FoodFacade.foods_by_keyword(params[:q])
    @food_count = FoodFacade.count_foods(params[:q])
  end
end