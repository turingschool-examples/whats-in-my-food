class FoodsController < ApplicationController

  def index
    @foods = if params[:q].present?
      FoodsFacade.search(params[:q])
    end
    @search_info = FoodsFacade.search_hits(params[:q])
  end

end
