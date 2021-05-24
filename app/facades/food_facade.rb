class FoodFacade
  class << self
    def foods_by_ingredient(ingredient)
      results = FoodService.search_by_ingredient(ingredient)
      results[:foods] = results[:foods][0..9]
      results
    end
  end
end