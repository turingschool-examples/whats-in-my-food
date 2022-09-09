class FoodsFacade
  def self.food_with(ingredient)
    FoodsService.food_with(ingredient)[:foods][0..9].map do |food_data|
      Food.new(food_data)
    end
  end

  def self.total_with(ingredient)
    FoodsService.food_with(ingredient)[:totalHits]
  end
end