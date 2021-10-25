class FoodsController < ApplicationController
  def index
    results = FoodFacade.search_by_ingredient(params[:q])
    @result_count = results[:total_result_count]
    @foods = results[:top_ten_foods]
  end
end
