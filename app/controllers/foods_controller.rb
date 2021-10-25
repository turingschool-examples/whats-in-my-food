class FoodsController < ApplicationController
  def index
    @foods, @total_hits = FoodFacade.search(params[:q])
  end
end
