class FoodFacade
  class << self
    def find_food(query)
      food_json = FoodService.search(query)

      FoodList.new(food_json)
    end
  end
end