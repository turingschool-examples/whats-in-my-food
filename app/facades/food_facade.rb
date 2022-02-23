class FoodFacade
  def self.foods(food)
    json = FoodService.search_foods(food)
    # count
    
  end
end
