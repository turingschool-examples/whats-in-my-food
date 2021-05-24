class FoodsController < ApplicationController
    def index
      @ingredient = params[:q]
      @foods = FoodsService.search_ingredients(@ingredient)
      # binding.pry

    end
  end
