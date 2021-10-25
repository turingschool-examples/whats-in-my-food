class FoodsFacade
  def self.total_foods(query)
    data = FoodsService.foods_query(query)

    data[:totalHits]
  end
end
