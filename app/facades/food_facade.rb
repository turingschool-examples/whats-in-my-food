class FoodFacade

  def self.food_search(query)
    results = FoodService.search(query)
    results[:foods][0..9].map { |food_data| Food.new(food_data) }
  end
end
