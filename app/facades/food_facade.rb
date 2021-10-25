class FoodFacade

  def self.food_search(query)
    results = FoodService.search(query)
    foods = results[:foods][0..9].map { |food_data| Food.new(food_data) }
    data = { total_results: results[:totalHits], foods: foods}
    SearchResult.new(data)
  end
end
