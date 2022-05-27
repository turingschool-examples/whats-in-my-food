class FoodsController < ApplicationController
  def index
    @search_results = FoodFacade.search(params[:q])
  end
end
