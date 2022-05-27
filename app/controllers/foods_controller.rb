class FoodsController < ApplicationController 
    def index 
        @foods = FoodsFacade.new.get_foods_search(params[:q])
    end

end