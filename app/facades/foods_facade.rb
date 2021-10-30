class FoodsFacade
  def self.search_foods_by_ingredient(ingredient)
    search_data = FoodsService.search_foods(ingredient)

    food_objects = search_data[:foods].map do |data|
      Food.new(data)
    end
    {total_hits: search_data[:totalHits], foods: food_objects}
  end
end
