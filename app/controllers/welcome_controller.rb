class WelcomeController < ApplicationController

  def index
    @food_results = FoodFacade.create_food_search(keyword)
  end
end
