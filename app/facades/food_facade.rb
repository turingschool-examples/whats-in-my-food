class FoodFacade
  class << self
    def search_for_foods(food)
      food_data = FoodService.get_data("search?query=#{food}")
      foods = food_data[:foods].map do |result|
        Food.new(result)
      end
    end

    def total_results(food)
      food_data = FoodService.get_data("search?query=#{food}")
      food_data[:totalHits]
    end
  end
end
