class FoodSearchFacade
  def self.get_foods(query)
    FoodService.get_food_details(query)
  end
end