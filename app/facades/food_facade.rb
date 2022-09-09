class FoodFacade
    def self.food_search(keyword)
        data = FoodsService.search(keyword)
        unless data.nil?
            data.map do |food|
                Food.new(food)
            end
        end
    end

    def self.food_search_count(keyword)
        data = FoodsService.search_count(keyword)
        unless data.nil?
            data[:totalHits]
        end
    end
end