class FoodsController < ApplicationController
  def index
    if params[:q].present?
      @food_search_term = search_params
      @food_list = FoodFacade.food_search_list(search_params)
      @food_count = FoodFacade.food_search_list(search_params)
    else
      redirect_to root_path
    end
  end

  private

  def search_params
    params.require(:q)
  end
end
