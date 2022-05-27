class WelcomeController < ApplicationController
  def index
    results = FoodService.search_for_foods(params[:q])
  end
end
