class FoodsFacade

  class << self

    def get_foods(food)
      json = FoodsService.find_food(food)[:foods]

      json[0..9].map {|food| Food.new(food)}
    end

    def count_foods(food)
      json = FoodsService.find_food(food)[:totalHits]
    end

  end
end
