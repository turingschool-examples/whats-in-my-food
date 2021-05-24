class FoodFacade
  def self.search(search_params)
    json = FoodService.search_foods(search_params)
    foods =json[:foods].map { |food_info| Food.new(food_info) }
    foods[0..9]
  end
  def self.total_results(search_params)
    json = FoodService.search_foods(search_params)
    json[:totalHits]
  end
end