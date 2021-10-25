class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search(params[:q])
  end
end
