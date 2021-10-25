class FoodFacade

  def self.food_search(ingredient)
   results = FoodService.search_by_ingredient(ingredient)
   {
     result_count: results[:totalHits],
     top_ten: results[:foods].map { |result| Food.new(result) }
   }
  end

end
