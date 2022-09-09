class FoodFacade
  class << self
    def get_a_food(food)
      data = FoodService.call_for_a_food(food)

    end
  end
end
