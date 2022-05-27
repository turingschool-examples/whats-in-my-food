class FoodFacade
  def self.search_by_ingredient(ingredient)
    foods = FoodService.search(ingredient)
    foods[:foods].map do |food|
      Food.new(food)
    end
  end
end
