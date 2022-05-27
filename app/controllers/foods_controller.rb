class FoodsController < ApplicationController 
    def index 
        @foods = FoodsFacade.new.get_foods_search(params[:q])
        @search_count = FoodsFacade.new.get_foods_data(params[:q])[:totalHits]
    end

end