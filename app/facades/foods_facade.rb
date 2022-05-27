class FoodsFacade
  def self.find_foods(food)
    json = FoodsService.search_foods(food)
    count = json[:totalHits]
    foods = json[:foods].map { |food_data| Food.new(food_data, count) }
    ten_foods = foods.shift(10)
  end
end
