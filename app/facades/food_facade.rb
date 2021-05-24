class FoodFacade
  def self.search(search_params)
    json = FoodService.search_foods(search_params)
    binding.pry
    json[:foods].map { |food_info| Food.new(food_info) }
  end
end