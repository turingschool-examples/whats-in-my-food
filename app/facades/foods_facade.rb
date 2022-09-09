class FoodsFacade

  class << self

    def get_foods(food)
      json = FoodService.find_food(food)

      json.map {|food| Food.new(food)}
    end

  end
end
