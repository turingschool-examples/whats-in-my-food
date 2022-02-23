# app/controllers/foods_controller.rb

require 'faraday'

class FoodsController < ApplicationController
  def index 
    @foods = FoodFacade.foods_containing_ingredient(params[:query])
  end
end
