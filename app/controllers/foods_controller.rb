# frozen_string_literal: true

class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search_foods(params[:q])
    @total_results = FoodFacade.total_results(params[:q])
  end
end