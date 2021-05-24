class FoodsController < ApplicationController
  def index
    food_input        = params[:q]

    @foods_info       = FoodsFacade.search_by_food(food_input)
    @total_food_count = FoodsFacade.searched_food_count(food_input)
  end
end
