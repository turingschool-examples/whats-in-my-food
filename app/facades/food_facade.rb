class FoodFacade
  def self.find_foods_by_ingredient(ingredient)
    json = FoodService.find_foods_by_ingredient(ingredient)
    foods = json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end
  
  def self.find_number_of_results(ingredient)
    json = FoodService.find_foods_by_ingredient(ingredient)
    json[:totalHits]
  end
end