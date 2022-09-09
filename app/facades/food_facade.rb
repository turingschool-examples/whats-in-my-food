class FoodFacade
  def self.search(ingredient)
    parsed_json = FoodService.foods(ingredient)
    parsed_json[:results].map do |food_json|
      FoodPoros.new(food_json)
    end
  end
end