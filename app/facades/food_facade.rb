class FoodFacade
  class << self
    def food_search(food)
      data = FoodService.find_foods(food)
      data[:foods].map do |food_data|
        Food.new(food_data)
      end.take(10)
    end

    def result_count(food)
      data = FoodService.find_foods(food)
      data[:totalHits]
    end
  end
end
