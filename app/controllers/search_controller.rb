class SearchController < ApplicationController

  def ingredient
    @results = FoodsFacade.get_foods(params[:q])
  end

end
