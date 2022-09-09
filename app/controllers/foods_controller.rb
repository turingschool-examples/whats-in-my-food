class FoodsController < ApplicationController
    def index
        @keyword = params[:'q']
        @foods = FoodFacade.food_search(@keyword).first(10)
        @count = FoodFacade.food_search_count(@keyword)
    end
end