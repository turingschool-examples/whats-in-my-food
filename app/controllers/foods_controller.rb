# app/controllers/foods_controller.rb

require 'faraday'

class FoodsController < ApplicationController
  def index
    @total_hits = FoodFacade.total_hits(params[:query])
    @foods = FoodFacade.foods_containing_ingredient(params[:query])
  end
end
