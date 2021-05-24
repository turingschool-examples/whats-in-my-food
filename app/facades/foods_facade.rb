class FoodsFacade
  class << self
    def search_by_food(food_input)
      searched_food_info = FoodsService.search_by_food_db(food_input)

      searched_food_info[:foods].map do |food_info|
        Food.new(food_info)
      end
    end

    def searched_food_count(food_input)
      FoodsService.search_by_food_db(food_input)[:totalHits]
    end
  end
end