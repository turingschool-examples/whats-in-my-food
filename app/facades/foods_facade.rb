class FoodsFacade
  def self.food_search(search)
    food = FoodsService.search_foods(search)
    FoodInfo.new(food)
  end

end
