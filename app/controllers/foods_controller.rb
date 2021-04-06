class FoodsController < ApplicationController
  def index
    @foods = ResultsFacade.results(search_params)
    @total_results = ResultsFacade.total_results(search_params)
  end

  private

  def search_params
    params.permit(:q)
  end
end
