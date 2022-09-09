class FoodsController < ApplicationController
  def index
    @total_items = UsdaFacade.name_search_total_count(params[:q])
    @food_list = UsdaFacade.name_search_items(params[:q])
  end
end
