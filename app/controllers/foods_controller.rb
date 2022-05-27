class FoodsController < ApplicationController
  def index
    @foods = FoodsFacade.get_list_of_foods
  end
end
