class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.search(params[:search])
  end
end