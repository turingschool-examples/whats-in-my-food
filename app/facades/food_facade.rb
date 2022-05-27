class FoodFacade
  def self.search_for_foods(food)
    food_results = FoodService.search_for_foods(food)
  end
end
