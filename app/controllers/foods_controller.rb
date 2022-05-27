class FoodsController < ApplicationController
  def index
    items = FoodsFacade.search_by_ingredient(params[:ingredient])
  end
end