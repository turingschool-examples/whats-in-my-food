class FoodsFacade

  def self.search_ingredient(ingredient)
    search_data = FoodsService.search_ingredient(ingredient)
   {total_hits: search_data[:totalHits], foods: search_data[:foods].map { |datum| Food.new(datum)} }
  end

end