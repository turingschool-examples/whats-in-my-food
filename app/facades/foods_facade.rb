class FoodsFacade 
    def get_foods_search(search) 
        binding.pry
        get_food_data[:foods].map do |data|
            Food.new(data)
        end
    end 

    def get_food_data(search)
        service.get_foods(search)
    end
    
    def service 
        FoodService.new
    end
end