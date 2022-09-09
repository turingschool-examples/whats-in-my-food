class FoodsController < ApplicationController
  def results
    @results = FoodsFacade.search_by_keyword(params[:q])
  end
end