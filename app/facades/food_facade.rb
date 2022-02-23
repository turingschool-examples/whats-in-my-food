class FoodFacade
  def self.food_search_list(food)
    json = FoodService.search_foods(food)
    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end

  def self.food_search_count(food)
    json = FoodService.search_foods(food)
    json[:totalHits]
  end
end
