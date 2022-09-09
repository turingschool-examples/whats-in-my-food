class FoodsController < ApplicationController 

    def index  
        if params[:q] != nil && params[:q] != ''
            @total_foods = FoodsIndexSearchTotalFacade.service(params[:q]) 
            @foods = FoodsIndexSearchResultFacade.service(params[:q])  
        else  
            flash[:error] = "Please submit a query in the search form" 
            redirect_to "/"
        end 
    end 
end 