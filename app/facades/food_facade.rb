class FoodFacade 
    def self.get_foods
        all_foods = FoodService.get_foods
        all_foods[:data].map do |data|
            Food.new(data, capture[:totalHits])
        end
    end
end