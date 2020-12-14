class FoodFacade
  def self.food_details(search_term)
    results = FoodService.search(search_term)
    results[:foods].map do |item|
      Food.new(item)
    end
  end
end
