class FoodFacade
  def self.find_foods(ingredient)
    json = FoodService.search_by_ingredient(ingredient)
    json[:foods].map do |food_info|
      Food.new(food_info)
    end.first(10)
  end

  def self.total_results(ingredient)
    FoodService.search_by_ingredient(ingredient)[:totalHits]
  end
end
