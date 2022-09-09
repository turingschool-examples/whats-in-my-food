class FoodsController < ApplicationController
    def index 
         @foods = FoodFacade.all_foods_search(params[:q])
    end
end