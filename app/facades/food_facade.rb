class FoodFacade

  def self.search_foods(query)
    results = FoodService.name_search(query)
    results[:foods].map do |result|
      Food.new(result)
    end
  end
end