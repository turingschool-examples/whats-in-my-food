class FoodFacade
  class << self
    def get_foods(food_name)
      data = FoodService.call_for_a_food(food_name)
      foods = data[:foods].map do |food|
        Food.new(food)
      end
      foods.take(10)
    end

    def get_total_foods(food_name)
      data = FoodService.call_for_a_food(food_name)
      @total_count = data[:totalHits]
    end
  end
end