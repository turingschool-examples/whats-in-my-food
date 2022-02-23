class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.searched_food(params[:q])
  end
end
