class FoodFacade
    
    def self.search_list_by_food(food)
        parsed_json = FoodService.search_food(food)
        parsed_json[:foods].map do |food_json| 
          Food.new(food_json)
        end
    end
end