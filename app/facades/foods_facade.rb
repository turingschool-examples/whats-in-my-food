class FoodsFacade

  def self.search_by_food(food)
  	foods_data = FoodsService.foods_by_ingredient(food)[:foods][0..9]
  	foods_data.map do |food_data|
  	  Food.new(food_data)
  	end
  end

end
