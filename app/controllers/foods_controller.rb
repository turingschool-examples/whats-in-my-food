class FoodsController < ApplicationController
  def index
    # @foods = Foods.all
    @foods = FoodsFacade.create_food(@query)
  end
end
