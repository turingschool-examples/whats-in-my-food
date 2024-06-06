class FoodFacade 
    def self.food_finder(food)
        food = FoodService.search_food(food)
        food[:foods].map do |food_data|
            Food.new(food_data, food[:totalHits])
        end 
    end 
end 