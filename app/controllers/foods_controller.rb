class FoodsController < ApplicationController

  def search
    @food_results = FoodFacade.create_food_search('sweet potatoes')
  end
end