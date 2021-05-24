class FoodFacade
  class << self
    def foods_containing(keyword)
      FoodService.foods_containing(keyword)[:foods].each do |food_data|
        Food.new(food_data)
      end
    end

    def count_of_foods_containing(keyword)
      FoodService.foods_containing(keyword)[:totalHits]
    end
  end
end
