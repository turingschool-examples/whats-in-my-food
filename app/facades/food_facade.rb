class FoodFacade
    def self.all_foods_search(search_params)
        FoodService.get_all_food_data(search_params).map do |data|
            Food.new(data)
        end
    end
end
