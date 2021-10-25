class FoodsFacade
  def self.search_foods_by_ingredient(ingredient)
    food_data = FoodsService.get_data("search?query=#{ingredient}")
# require "pry"; binding.pry
    food_data.map do |data|
      Food.new(data)
    end
  end
end
