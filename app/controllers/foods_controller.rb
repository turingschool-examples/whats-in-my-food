class FoodsController < ApplicationController 

    def index 
        @food_search_results = FoodFacade.food_finder(params[:search])
    end 
end 