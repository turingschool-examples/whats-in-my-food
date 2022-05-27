class WelcomeController < ApplicationController
  def index
    results = FoodService.search_for_foods(params[:q])
    @total_hits = results[:totalHits]
  end
end
