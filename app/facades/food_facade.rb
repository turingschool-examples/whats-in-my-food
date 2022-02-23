class FoodFacade
  def self.food_search(food)
    search_results = FoodService.search_all_items(food)
    search_results[:foods].map do |food|
      FoodItem.new(food)
    end
  end
end
