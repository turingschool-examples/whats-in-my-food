class FoodsController < ApplicationController

  def index
   @results = FoodFacade.food_search(params[:q])
   @result_count = results[:result_count]
   @foods = results[:top_ten]

  end
end
