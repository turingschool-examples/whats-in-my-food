class FoodsController < ApplicationController
  def index
    @foods = FoodDBFacade.searched_food_results(params[:q])
    @total_hits = FoodDBFacade.the_total_hits_for_search(params[:q])
  end
end