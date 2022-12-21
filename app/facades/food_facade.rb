class FoodFacade

  def self.ingredient_search(search_string)
    data = FoodService.foods_by_ingredient(search_string)

    food_results = data[:foods]

    @foods = food_results.map do |food|
      Food.new(food)
    end

    [@foods.first(10),data[:totalHits]]
  end

end