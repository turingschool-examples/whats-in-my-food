class FoodFacade
  class << self
    def get_foods(food_name)
      data = FoodService.call_for_a_food(food_name)
      data[:foods][0..9].map do |food|
        Food.new(food)
      end
    end
  end
end