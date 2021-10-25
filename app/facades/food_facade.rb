class FoodFacade
  class << self
    def food_search(food)
      data = FoodService.find_foods(food)
      data[:foods].map do |food_data|
        Food.new(food_data)
      end
    end
  end
end
