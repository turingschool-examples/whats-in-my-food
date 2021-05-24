class FoodsFacade
  def self.search_food(query)
    foods = []
    data = FoodsService.search_food(query)
    data[:foods].first(10).each do |food|
      foods << Food.new(food)
    end
  end

  def self.search_food_query(query)
    data = FoodsService.search_food(query)
    data[:foodSearchCriteria][:query]

  def self.search_food_total(query)
    data = FoodsService.search_food(query)
    data[:totalHits]
    end
  end
end
