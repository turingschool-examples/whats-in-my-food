class FoodFacade
  def total_results(query)
    FoodService.get_foods(query)[:totalHits]
  end

  def find_foods(query)
    body = FoodService.get_foods(query)
    
    body[:foods].map { |data| Food.new(data) }
  end
end
