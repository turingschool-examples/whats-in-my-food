class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.top_10_results(query_params)
    @count = FoodsFacade.foods_count(query_params)
  end

  def query_params
    params.require(:q)
  end
end
