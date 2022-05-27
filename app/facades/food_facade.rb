class FoodFacade
  def self.search_for_foods(food)
    FoodService.search_for_foods(food)
  end
end
