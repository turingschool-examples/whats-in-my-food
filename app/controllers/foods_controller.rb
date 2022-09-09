class FoodsController < ApplicationController
   def index
      @foods = FoodFacade.new.get_food_search(params[:q])
   end
end