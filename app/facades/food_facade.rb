class FoodFacade
  class << self
    def foods_containing(keyword)
      # binding.pry
      FoodService.foods_containing(keyword)[:foods].each do |food_info|
        Food.new(food_info)
      end
    end

    def count_foods_containing(keyword)
      FoodService.foods_containing(keyword)[:totalHits]
    end
  end
end
