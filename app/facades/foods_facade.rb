class FoodsFacade
  def self.find_foods(food)
    json = FoodsService.search_foods(food)
    count = json[:totalHits]
    json[:foods].map { |food_data| Food.new(food_data, count) }
  end
end
