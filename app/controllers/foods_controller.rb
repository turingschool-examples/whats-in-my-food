class FoodsController < ApplicationController
  def index
    @results = FoodFacade.foods_by_ingredient(params[:q])
  end
end