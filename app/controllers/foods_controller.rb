class FoodsController < ApplicationController
    def index
        @keyword = params[:'q']
        @foods = FoodsFacade.foods_search(@keyword)
    end
end