class FoodFacade
  def self.search_by_ingredient(ingredient)
    food = FoodService.search(ingredient)
  end

end
