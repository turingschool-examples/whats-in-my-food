class FoodFacade
  def self.searched_food(food_type)
    foods = FoodService.get_foods_by_type(food_type)[:foods]
    foods.map do |food_data|
      Food.new(food_data)
    end
  end
end
