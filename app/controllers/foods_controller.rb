class FoodsController < ApplicationController 

    def index  
        if params[:q] != nil 
            @total_foods = FoodsIndexSearchTotalFacade.service(params[:q]) 
            @foods = FoodsIndexSearchResultFacade.service(params[:q])   
        end 
    end 
end 