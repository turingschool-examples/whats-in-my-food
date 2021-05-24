class FoodFacade
  class << self 
    def search_foods(food)

      data = FoodService.call_for_a_food(food)
      FoodIndex.new(data)
    end
  end
end