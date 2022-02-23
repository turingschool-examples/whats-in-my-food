class FoodFacade
  class << self
    def food_search(food)
      data = FoodService.find_foods(food)
      data[:foods].take(10).map do |food_data|
        Food.new(food_data)
      end
    end

    def result_count(food)
      data = FoodService.find_foods(food)
      data[:totalHits]
    end
  end
end 