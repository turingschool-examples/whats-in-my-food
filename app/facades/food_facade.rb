class FoodFacade
  def self.search_by_food(food)
    foods = FoodService.food_search(food)[:foods][0..9]
    foods.map do |food|
      Food.new(food)
    end
  end

  def self.total_count(food)
    FoodService.food_search(food)[:totalHits]
  end
end
