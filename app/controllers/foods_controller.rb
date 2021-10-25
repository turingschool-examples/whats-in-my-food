class FoodsController < ApplicationController
  def search
  end

  def index
    @foods = FoodFacade.ten_food_search(params[:q])
  end
end
