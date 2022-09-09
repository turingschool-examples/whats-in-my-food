class FoodsController < ApplicationController

  def index
    @foods = FoodsFacade.search_foods
  end
end
