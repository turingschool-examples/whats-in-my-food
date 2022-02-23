class FoodsFacade
  def self.get_foods_by_ingredient(ingredient)
    foods = FoodService.foods_by_ingredient(ingredient)

    foods[:foods].map do |food|
      Food.new(food)
    end[0..9]
  end
end
