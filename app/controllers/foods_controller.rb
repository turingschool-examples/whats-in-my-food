class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.foods_by_keyword(params[:search])
  end
end
