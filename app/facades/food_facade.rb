class FoodFacade
  def self.get_food_items(food)
    items = FoodService.call_for_items(food)
  end
end
