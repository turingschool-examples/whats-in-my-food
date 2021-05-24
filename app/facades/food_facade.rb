class FoodFacade
  def self.foods_with_ingredient(ingredient)
    json = FoodService.ingredient_query(ingredient)
    json[:foods].map do |food|
      Food.new(food)
    end.first(10)
  end

  def self.total_results_ingredient(ingredient)
    json = FoodService.ingredient_query(ingredient)
    json[:totalHits]
  end
end
