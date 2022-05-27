class FoodFacade
  def self.total_results(query)
    FoodService.get_foods(query)[:totalHits]
  end

  def self.find_foods(query)
    body = FoodService.get_foods(query)
    
    body[:foods][0..9].map { |data| Food.new(data) }
  end
end
