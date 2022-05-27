class FoodsController < ApplicationController
  def index
    FoodsFacade.get_list_of_foods
  end
end
