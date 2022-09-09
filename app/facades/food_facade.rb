class FoodFacade 
    def self.get_foods(search_term)
        all_foods = FoodService.get_foods(search_term)
        all_foods[:foods].map do |data|
            Food.new(data, all_foods[:totalHits])
        end
    end
end