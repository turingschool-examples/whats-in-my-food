class FoodController < ApplicationController
  def index
    @food = FoodFacade.create_food
  end
end
