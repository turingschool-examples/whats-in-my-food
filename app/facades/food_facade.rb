class FoodFacade
  def self.food_search(search)
    json = FoodService.foods_with_ingredient(search)
    foods = json[:foods].map do |food|
      FoodItem.new(food)
    end
    {
    total_hits: json[:totalHits],
    foods: foods
    }
  end
end
