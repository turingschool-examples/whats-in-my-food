class FoodFacade
  def self.all_foods(food)
    json_data = FoodService.foods(food)
    food_hits = json_data[:totalHits]

    foods = json_data[:foods].map do |food|
      Food.new(food, food_hits)
    end
  end
end
