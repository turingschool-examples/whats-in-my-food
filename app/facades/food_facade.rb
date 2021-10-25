class FoodFacade
  class << self
    def find_foods(query)
      data = FoodService.search_foods(query)
      food_data = data[:foods]
      total_hits = data[:totalHits]
      food_data.map do |food_info|
        Food.new(food_info, total_hits)
      end
    end
  end
end
