class FoodsController < ApplicationController
  def index
    @count = FoodFacade.display_count_foods_returned
  end
end
