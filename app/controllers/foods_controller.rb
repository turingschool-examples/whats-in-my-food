class FoodsController < ApplicationController
  def index
    results = FoodFacade.search(params[:q])
    @total_hits = results[:total_hits]
    @top_ten = results[:top_ten]
  end
end
