class FoodsFacade
  def self.total_hits(params)
    results = FoodsService.get_search(params)
    results[:totalHits]
  end
end
