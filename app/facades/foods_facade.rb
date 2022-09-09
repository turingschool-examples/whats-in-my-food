class FoodsFacade

  def self.food_search(food)
      data = FoodsService.food_search(food)
      foods = data[0..9].map do |food|
          Food.new(food)
      end
  end

  def self.food_matches(food)
    data = FoodsService.food_results(food)
    food_matches = data[:totalHits]
  end
end
