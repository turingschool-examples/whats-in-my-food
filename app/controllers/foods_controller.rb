class FoodsController < ApplicationController
  def index
    @total_hits = FoodsFacade.total_hits(params[:q])
  end
end
