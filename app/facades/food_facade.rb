class FoodFacade
  def self.foods(food_input)
    food_result = FoodService.return_food_query(food_input)
  end
end