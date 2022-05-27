class FoodsFacade
  def self.total_hits(params)
    results = FoodsService.get_search(params)
    results[:totalHits]
  end

  def self.food_results(params)
    FoodsService.get_search(params)[:foods][0..9].map { |data| Food.new(data) }
  end
end
