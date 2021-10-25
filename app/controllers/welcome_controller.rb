class WelcomeController < ApplicationController
  def index
    @foods = FoodsFacade.search_foods_by_ingredient(params[:search])
  end
end
