class FoodFacade

  def self.get_10(ingredient)
    json = FoodDataService.search_ingredient(ingredient)[:foods][0..9]
    json.map do |food|
      Food.new(food)
    end
  end

  def self.total_hits(ingredient)
    json = FoodDataService.search_ingredient(ingredient)[:totalHits]
  end
end
