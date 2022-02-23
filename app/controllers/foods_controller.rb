class FoodsController < ApplicationController
  def index

    @foods =  FoodsFacade.top_20_results(query_params)
  end

  def query_params
    params.require(:q)
  end
end
