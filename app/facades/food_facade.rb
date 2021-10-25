class FoodFacade
  def self.search_by_ingredient(ingredient)
    result = FoodService.search_by_ingredient(ingredient)
    {
      total_result_count: result[:totalHits],
      top_ten_foods: result[:foods].map do |food|
        Food.new(food)
      end
    }
  end
end
