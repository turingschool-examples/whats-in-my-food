class FoodsController < ApplicationController 
    def index 
        if params[:q] != ""
            @foods = FoodsFacade.new.get_foods_search(params[:q])
            @search_count = FoodsFacade.new.get_foods_data(params[:q])[:totalHits]
        else 
            flash[:alert] = "Invalid input, stop playing silly games and enter a real value"
            redirect_to "/"
        end 
    end

end