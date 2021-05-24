class FoodsController < ApplicationController
    def index
      @ingredient = params[:q]
      @food_count = FoodsService.search_ingredients(@ingredient)[:totalHits]
      # binding.pry
      @foods = FoodsService.food_list(@ingredient) 
      # binding.pry

    end
  end
