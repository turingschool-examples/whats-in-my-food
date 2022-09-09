class FoodsFacade
    def self.foods_search(keyword)
        data = FoodsService.search(keyword)
        unless data.nil?
            data.map do |food|
                Food.new(food)
            end
        end
    end
end