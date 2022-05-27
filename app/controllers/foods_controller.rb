class FoodsController < ApplicationController
  def search
    binding.pry
    @results = FoodFacade.search_foods(params[:q])
  end


  # call on the facade to do a search

  # facade will call on service

  # service will connect to the endpoint with faraday
end
