class FoodFacade
  def self.search(ingredient)
    parsed_json = FoodService.top_10(ingredient)
    parsed_json[:foods].map do |food_json|
      FoodPoro.new(food_json)
    end
  end

  def self.total_hits(ingredient)
    FoodService.total_foods(ingredient)
  end
end