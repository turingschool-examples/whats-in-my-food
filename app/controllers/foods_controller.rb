class FoodsController < ApplicationController
  def index
    @food_results = FoodsFacade.search_results(params[:q])
  end
end
