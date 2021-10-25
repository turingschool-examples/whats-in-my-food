class FoodFacade

  def self.get_10(ingredient)
    json = FoodDataService.search_ingredient(ingredient)
    json.map do |food|
      Food.new(food)
    end
  end
end
