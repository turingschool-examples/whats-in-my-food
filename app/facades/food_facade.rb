class FoodFacade

  def self.items_returned(search_term)
    json = FoodService.search(search_term)
    json[:totalHits]
  end
  
  def self.search(search_term)
    json = FoodService.search(search_term)
    json[:foods].first(10).map do |food_data|
      Food.new(food_data) 
    end
  end
end