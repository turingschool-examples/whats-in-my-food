class FoodsFacade 
    def get_foods_search(search)  
        get_foods_data(search)[:foods].map do |data|
            Food.new(data)
        end
    end 

    def get_foods_data(search)
        service.get_foods(search)
    end
    
    def service 
        FoodService.new
    end
end