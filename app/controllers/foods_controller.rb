class FoodsController < ApplicationController
    def index
        @foods = FoodFacade.get_foods(params[:search])
    end
end