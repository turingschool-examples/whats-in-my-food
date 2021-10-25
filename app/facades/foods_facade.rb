class FoodsFacade
  class << self
    def foods_search(query)
      data = FoodsService.search_foods(query)
      data.map do |food_data|
        Food.new(food_data)
      end
    end
  end
end
