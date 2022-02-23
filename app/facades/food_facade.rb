class FoodFacade
  def self.food_search(food)
    @total_search_results = FoodService.search_all_items(food)
    # Using this to limit to ten results before making the poros
    ten_results = @total_search_results[:foods].map { |result| result }.take(10)
    ten_results.map { |food| FoodItem.new(food) }
  end

  def self.count
    @total_search_results[:totalHits]
  end
end
