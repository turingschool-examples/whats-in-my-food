class FoodsFacade
  def self.get_foods(search)
    foods = FoodsService.search_foods(search)
    require "pry"; binding.pry
  end
end
