class FoodFacade
  class << self
    def foods_by_ingredient(ingredient)
      results = FoodService.search_by_ingredient(ingredient)
      Search.new(results)
    end
  end
end