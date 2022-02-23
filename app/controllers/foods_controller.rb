class FoodsController < ApplicationController
  def index
    if params[:q].present?
      query = params[:q]
      @results = FoodFacade.search_for_food(query)
    end
  end
end
