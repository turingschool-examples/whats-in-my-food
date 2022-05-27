class FoodsFacade
  def self.food_search(search)
    food = FoodsService.search_foods(search)
    FoodInfo.new(food)
  end

  def self.ten_results(search)
    # require "pry"; binding.pry
  end
end
