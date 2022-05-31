class FoodsFacade

  def self.search_by_food(food)
  	foods_data = FoodsService.foods_by_ingredient(food)

  	foods = foods_data[:foods]
    foods.map do |food_data|
  	  Food.new(food_data)
  	end
  end

  def self.total_hits(food)
    FoodsService.foods_by_ingredient(food)[:totalHits]
  end
end
