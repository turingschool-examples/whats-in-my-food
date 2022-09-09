class FoodsFacade

  class << self

    def get_foods(food)
      json = FoodService.find_food(food)[:foods]

      json.map[0..9] {|food| Food.new(food)}
    end

    def count_foods(food)
      json = FoodService.find_food(food)[:totalHits]
    end

  end
end
